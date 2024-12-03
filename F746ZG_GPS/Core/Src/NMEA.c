/*
 * NMEA.c - Implementation of NMEA sentence parsing for GPS data.
 * Provides functions for parsing GGA sentences and converting
 * them into structured data.
 */

#include "NMEA.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
//#include <stdint.h>
//#include <ctype.h>      // for check symbols,  isdigit

// Macros for various precisions
#define FIXED_PRECISION_2   100       // For precision up to 2 decimal places
#define FIXED_PRECISION_4   10000     // For precision up to 4 decimal places
#define FIXED_PRECISION_6   1000000   // For precision up to 6 decimal places


/**
 * Converts a numeric string to a fixed-point integer with the specified scale.
 * @param str   The numeric string (e.g., "123.456").
 * @param scale The scale factor for fixed-point conversion (e.g., 1000 for 3 decimal places).
 * @return      Fixed-point representation of the number as an int32_t.
 */
int32_t nmea_atof_fixed(const char *str, int scale)
{                                                                   // Convert string to fixed-point integer
    int32_t result   = 0;                                           // Holds the final result
    int     sign     = 1;                                           // Assume positive number by default

    // Skip leading spaces
    while (*str == ' ')
    {
        str++;                                          
    }

    // Check for sign
    if  (*str == '-')
    {
        sign = -1;                                      
        str++;                                          
    }
    else if(*str == '+')
    {
        str++;                                          
    }

    // Process the integer part
    while (*str >= '0' && *str <= '9')
    {
        result = result * 10 + (*str - '0');            
        str++;                                          
    }

    // Handle fractional part if decimal point is found
    if (*str == '.')
    {
        str++;                                                      // Skip the decimal point
        int     scale_factor = scale;                               // Scale factor for fractional part
        // Process digits after decimal, adjusting scale
        while (*str >= '0' && *str <= '9' && scale_factor > 1)      // reduce scale and move to next character
        {
            result = result * 10 + (*str - '0');        
            scale_factor /= 10;                         
            str++;                                      
        }
    }

    // Apply remaining scale if no fractional digits
    while (scale > 1)
    {
        result *= 10;                                   
        scale /= 10;                             
    }

    return result * sign;                               
}


/*
 * parse_coordinate - Parses a coordinate from the NMEA format.
 *
 */
static int32_t parse_coordinate(const char *str, char direction, int scale) 
{
    int32_t degrees         = nmea_atof_fixed(str, scale);     // convert string to fixed point
    int32_t int_degrees     = degrees / 100;
    int32_t minutes         = degrees - (int_degrees * 100);
    int32_t decimal_degrees = int_degrees + (int32_t)(minutes / 60.0); //---> <d1:loss data>

    if (!str || *str == '\0') return 0;
    /* Apply direction correction (negative for South or West) */
    if (direction == 'S' || direction == 'W')
        decimal_degrees = -decimal_degrees;

    return decimal_degrees;
}

/*
 * decodeGGA - Decodes the GGA sentence into a GGASTRUCT.
 * 
 */
int decodeGGA(char *GGAbuffer, GGASTRUCT *gga) 
{
    /* Validate input */
    if (!GGAbuffer || !gga) 
    {
        return -1; /* Invalid input */
    }

    int  field_num = 0;
    char *ptr      = GGAbuffer;
    char *start    = ptr;
    char *token    = strtok(GGAbuffer, ",");

    printf("Parsing GGA sentence: %s\n", start);

    /* Parse each comma-separated field */
    // Iterate through the GGA sentence
    while (token != NULL) 
    {
        switch (field_num) 
        {
            case 1: /* UTC Time (HHMMSS) */
                if (field_num == 6) // checking if the field size is 6 symbols
                {
                    uint8_t hour = (uint8_t)((token[0] - '0') * 10 + (token[1] - '0'));
                    uint8_t min  = (uint8_t)((token[2] - '0') * 10 + (token[3] - '0'));
                    uint8_t sec  = (uint8_t)((token[4] - '0') * 10 + (token[5] - '0'));

                    // settings value format HHMMSS
                    gga->time.time = (uint32_t)(hour << 16) | (uint32_t)(min << 8) | (uint32_t)sec;
                }
                break;
            case 2: /* Latitude */
                {
                    if (token && token[0] != '\0')
                    {
                        // convert the latitude with 4 size floating
                        gga->location.latitude = parse_coordinate(token, gga->location.NS, FIXED_PRECISION_4);
                    }
                    break;
                }
            case 3: /* N/S Indicator */
                {
                    // Get the latitude indicator
                    gga->location.NS = token[0];
                    break;
                }
            case 4: /* Longitude */
                {
                    if (token && token[0] != '\0')
                    {
                        // Use parse_coordinate to convert longitude
                        gga->location.longitude = parse_coordinate(token, gga->location.EW, FIXED_PRECISION_4);
                    }
                    break;
                }
            case 5: /* E/W Indicator */
                {
                    // Record the longitude direction indicator
                    gga->location.EW = token[0];
                    break;
                }
            case 6: /* Fix Validity */
                {
                    gga->is_fix_valid = nmea_atof_fixed(token,FIXED_PRECISION_2) ? 1 : 0;
                    break;
                }
            case 7: /* Number of Satellites */
                {
                    int32_t numsat_val = nmea_atof_fixed(token,FIXED_PRECISION_2);
                    gga->numsat = (numsat_val > 127) ? 127 : (uint8_t)numsat_val;
                    break;
                }
            case 9: /* Altitude */
                {
                    gga->altitude.altitude = nmea_atof_fixed(token, FIXED_PRECISION_4);
                    break;
                }
            case 10: /* Altitude Unit */
                {
                    gga->altitude.unit = token[0];
                    break;
                }
        }
        token = strtok(NULL, ",");
        field_num++;
    }

    return 0;
}

/*
 * decodeRMC - Decodes the RMC sentence into an RMCSTRUCT.
 *
 */
int decodeRMC(char *RMCbuffer, RMCSTRUCT *rmc) 
{
    /* Validate input */
    if (!RMCbuffer || !rmc) 
    {
        return -1; /* Invalid input */
    }

    char *token = strtok(RMCbuffer, ",");
    int field_num = 0;

    /* Parse each comma-separated field */
    while (token != NULL) 
    {
        switch (field_num) 
        {
            case 1: /* UTC Time (HHMMSS) */
                {
                    rmc->date.day = (uint8_t)((token[0] - '0') * 10 + (token[1] - '0'));
                    rmc->date.month = (uint8_t)((token[2] - '0') * 10 + (token[3] - '0'));
                    /* Adjust for 21st century */
                    rmc->date.year = (uint16_t)(2000 + (token[4] - '0') * 10 + (token[5] - '0'));
                    break;
                }
            case 2: /* Validity ('A' = valid, 'V' = invalid) */
                {
                    rmc->is_data_valid = (token[0] == 'A') ? 1 : 0;
                    break;
                }
            case 3: /* Speed over ground in knots */
                {
                    rmc->speed_knots = nmea_atof_fixed(token,FIXED_PRECISION_2 );
                    break;
                }
            case 4: /* Course over ground */
                {
                    rmc->course = nmea_atof_fixed(token,FIXED_PRECISION_4 );
                    break;
                }
        }
        token = strtok(NULL, ",");
        field_num++;
    }
    return 0; 
}

/*
 * initGPS - Initializes a GPSSTRUCT to default values.
 *
 */
void initGPS(GPSSTRUCT *gps)
{
    memset(gps, 0, sizeof(GPSSTRUCT)); /* Set all fields to 0 */
}

/*
 * populateGPSData - Populates a GPSSTRUCT with data from GGA and RMC sentences.
 *
 */
int populateGPSData(char *ggaSentence, char *rmcSentence, GPSSTRUCT *gps)
{
    if (decodeGGA(ggaSentence, &gps->ggastruct) != 0)

    {
        return -1; /* Failed to parse GGA data */
    }

    if (decodeRMC(rmcSentence, &gps->rmcstruct) != 0) 
    {
        return -1; /* Failed to parse RMC data */
    }

    return 0;
}

