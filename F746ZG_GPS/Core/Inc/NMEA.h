/*
 * NMEA.h
 *
 * Header file for parsing NMEA sentences for GPS data
 */

#ifndef INC_NMEA_H_
#define INC_NMEA_H_

#include <stdint.h>

#define DECODE_HOUR(t)   (((t) >> 16) & 0xFF)
#define DECODE_MIN(t)    (((t) >> 8) & 0xFF)
#define DECODE_SEC(t)    ((t) & 0xFF)

// LOCATION structure with fixed-point representation
typedef struct
{                               // Умноженное на 1000000 значение (1.234567° -> 1234567)
    int32_t     latitude;       //  4 byte     Latitude  * 1e7 (10^6) (example: 12.345678 -> 123456780)
    int32_t     longitude;      //  4 byte     Longitude * 1e7 (10^6)
    char        NS;             //  1 byte                             /* uint8_t NS : 1; // N (0) or S (1) */
    char        EW;             //  1 byte                             /* uint8_t NS : 1; // N (0) or S (1) */
    uint16_t    padding;        //             выравнивание до 4 байт  /* this version didn't need padding */
} LOCATION;

// TIME structure packed into 32-bit
typedef struct
{
    uint32_t time;          // HHMMSS format in uint32_t (example, 123456 for 12:34:56)
} TIME;

// ALTITUDE structure
typedef struct
{
    //float altitude;
    int32_t altitude;       // Altitude in mm (fixed-point)  // Высота в мм, вместо float
    char unit;              // 'M' for meters
} ALTITUDE;

// Define DATE structure for storing date information
typedef struct {
    uint8_t day;
    uint8_t month;
    uint16_t year;
} DATE;

// DATETIME structure combining time and date
typedef struct {
    uint32_t time;        // HHMMSS
    uint32_t date;        // YYYYMMDD
} DATETIME;
// :AAC1>


// GGASTRUCT optimized for GPS GGA sentence
typedef struct
{
    LOCATION    location;       // 12 байт
    TIME        time;           // 4 байта
    ALTITUDE    altitude;       // 5 байт
    int8_t      is_fix_valid;   // 1 байт     Boolean
    uint8_t     numsat;         // 1 байт     Number of satellites
} GGASTRUCT;


// RMCSTRUCT optimized for GPS RMC sentence
typedef struct {
    DATE    date;
    int32_t speed_knots;        // Speed in knots * 1000
    int32_t course;             // Course in degrees * 100
    uint8_t is_data_valid;      // Boolean
} RMCSTRUCT;

// GPSSTRUCT for combining GGA and RMC data
typedef struct {
    GGASTRUCT ggastruct;
    RMCSTRUCT rmcstruct;
} GPSSTRUCT;

// Public function declarations
int32_t nmea_atof_fixed(const char *str, int scale);
int decodeGGA(char *GGAbuffer, GGASTRUCT *gga);
int decodeRMC(char *RMCbuffer, RMCSTRUCT *rmc);
void initGPS(GPSSTRUCT *gps);

int populateGPSData(char *ggaSentence, char *rmcSentence, GPSSTRUCT *gps);

#endif /* INC_NMEA_H_ */

