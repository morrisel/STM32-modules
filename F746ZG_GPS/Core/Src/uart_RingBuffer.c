/*
 * uart_RingBuffer.c
 *
 */

#include "uart_RingBuffer.h"
#include <string.h>

/********************************* define the UART you are using *********************************/

UART_HandleTypeDef huart1;

#define uart &huart1

#define TIMEOUT_DEF 500  // 500ms timeout for the functions
uint16_t timeout;

/* put the following in the ISR

   extern void Uart_isr (UART_HandleTypeDef *huart);
   extern uint16_t timeout;

*/


/************************************* NO CHANGES AFTER THIS *************************************/

ring_buffer rx_buffer = { { 0 }, 0, 0};
ring_buffer tx_buffer = { { 0 }, 0, 0};

ring_buffer *_rx_buffer;
ring_buffer *_tx_buffer;


/*************************************** Utility Functions ***************************************/
static void Ringbuf_reset(ring_buffer *buffer);
static void store_char(unsigned char c, ring_buffer *buffer);
static int check_for(char *str, char *buffinder);


void Ringbuf_init(void)
{
    _rx_buffer = &rx_buffer;
    _tx_buffer = &tx_buffer;

    //<test1: need to check all flags
    if (__HAL_UART_GET_FLAG(huart, UART_FLAG_FE) ||
            __HAL_UART_GET_FLAG(huart, UART_FLAG_NE) ||
            __HAL_UART_GET_FLAG(huart, UART_FLAG_ORE)) {

        __HAL_UART_CLEAR_FLAG(huart, UART_FLAG_FE | UART_FLAG_NE | UART_FLAG_ORE);
        Ringbuf_reset(_rx_buffer); 

        if (uart == NULL) return;
    }
    //:test1>


    /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
    __HAL_UART_ENABLE_IT(uart, UART_IT_ERR);

    /* Enable the UART Data Register not empty Interrupt */
    __HAL_UART_ENABLE_IT(uart, UART_IT_RXNE);
}

static void store_char(unsigned char c, ring_buffer *buffer)
{
    int i = (unsigned int)(buffer->head + 1) % UART_BUFFER_SIZE;

    // if we should be storing the received character into the location
    // just before the tail (meaning that the head would advance to the
    // current location of the tail), we're about to overflow the buffer
    // and so we don't write the character or advance the head.
    if(i != buffer->tail) {
        buffer->buffer[buffer->head] = c;
        buffer->head = i;
    }
}

static void Ringbuf_reset(ring_buffer *buffer)
{
    for (int i = 0; i < UART_BUFFER_SIZE; i++)
    {
        buffer->buffer[i] = 0;
    }    
    buffer->head = 0;
    buffer->tail = 0;
}

/* checks if the entered string is present in the given buffer */
static int check_for(char *str, char *buffinder)
{
    int slen   = strlen(str);       // length of the string to find
    int blen   = strlen(buffinder); // length of the buffer
    int so_far = 0;                 // number of characters matched so far
    int indx   = 0;                 // current index in the buffer

repeat:
    while (str[so_far] != buffinder[indx]) 
    {
        indx++;
        if (indx >= blen) return -1;
    }

    if (str[so_far] == buffinder[indx])
    {
        while (str[so_far] == buffinder[indx])
        {
            so_far++;
            indx++;
            if (so_far == slen) return 1;
        }
    }

    if (indx < blen)
    {
        so_far = 0;  
        goto repeat;
    }

    return -1;
}



int Uart_read(void)
{
    // if the head isn't ahead of the tail, we don't have any characters
    if (_rx_buffer->head == _rx_buffer->tail)
    {
        return -1;
    }
    else
    {
        unsigned char c = _rx_buffer->buffer[_rx_buffer->tail];
        _rx_buffer->tail = (_rx_buffer->tail + 1) % UART_BUFFER_SIZE;
        return c;
    }
}


/* schema of the ring buffer:
 *
 *
 *                 0                                      1
 *         -----------------                      -----------------
 *        |                 |                    |                 |
 *        |  tail  |  head  |    ----------->    |  tail  |  head  |   
 *        |                 |                    |                 |
 *         -----------------                      -----------------
 *                     head-->|     buffer     |<--tail 
 *                      ^        [0-9][A-Za-z]
 *                      |
 *                  (Ring buffer: after 512 goes back to 0)
 *                _tx_buffer  0 --------------> 512  
 *       
 *                _rx_buffer
 *
 * after reaching the end of the buffer (512), the pointers wrap back to the beginning (0).
 *
 */
/* writes a single character to the uart and increments head */
void Uart_write(int c)
{
    if (c < 0 || c > 255) return;

    // calculate the new value of head
    int i = (unsigned int)(_tx_buffer->head + 1) % UART_BUFFER_SIZE;

    while (i == _tx_buffer->tail);  // wait if the buffer is full

    // variation 1: timeout mechanism
    //    uint32_t start_time = HAL_GetTick(); // start time
    //    while (i == _tx_buffer->tail)
    //    {
    //        if ((HAL_GetTick() - start_time) > TIMEOUT_DEF)
    //        {
    //            return; // Exit after timeout
    //        }
    //    }
    //
    // variation 2: handle buffer overflow
    //    // if head reaches tail, it indicates a buffer overflow
    //    if (i == _tx_buffer->tail)      // buffer overflow 
    //    {
    //        return;
    //    }

    // store the character in the buffer
    _tx_buffer->buffer[_tx_buffer->head] = (uint8_t)c;

    // update the head pointer
    _tx_buffer->head = i;


    __HAL_UART_ENABLE_IT(uart, UART_IT_TXE);

}


// <d1:br
//int IsTxBufferFull(void)
//{
//    int next_head = (_tx_buffer->head + 1) % UART_BUFFER_SIZE;
//    return (next_head == _tx_buffer->tail); // returns 1 if full, 0 otherwise
//}
// re:d1>


/* sends the string to the uart */
void Uart_sendstring (const char *s)
{
    if (s == NULL) return;
    while(*s) Uart_write(*s++);

    // <d1:bi
    //if (!IsTxBufferFull())
    //{
    //    while(*s) Uart_write(*s++);
    //}
    //else
    //{
    //    // handle the case where the TX buffer is full
    //}
    // ie:d1>
}


// <d2:br
/* Print a number with any base, base can be 10, 8 etc */
void Uart_printbase(long n, uint8_t base)
{
    if (base < 2 || base > 36) return;  // invalid base

    char buffer[33];        // store a 32-bit
    char *ptr = &buffer[sizeof(buffer) - 1];
    *ptr = '\0';        

    // Handle negative numbers (only for base 10)
    int8_t    is_negative   = (n < 0 && base == 10);
    uint32_t  abs_value     = (n < 0) ? -n : n;

    do      // convert number to the given base
    {
        uint32_t remainder = abs_value % base;
        *--ptr = (remainder < 10) ? (remainder + '0') : (remainder - 10 + 'A'); // handle 0-9 and A-Z
        abs_value /= base;
    } while (abs_value > 0);

    if (is_negative) *--ptr='-';

    Uart_sendstring(ptr);
}
// re:d2>


/* checks if the new data is available in the incoming buffer */
int IsDataAvailable(void)
{
    return (uint16_t)(UART_BUFFER_SIZE + _rx_buffer->head - _rx_buffer->tail) % UART_BUFFER_SIZE;
}


// <d3:br
/* look for a particular string in the given buffer */
int Look_for (char *str, char *buffer)
{
    static uint16_t i = 0;
    static uint16_t str_len = 0;
    static uint8_t in_search = 0;

    if (!in_search)
    {
        str_len = 0;
        while (str[str_len] != '\0') str_len++;

        i = 0;
        in_search = 1;
    }

    // look for the string in the buffer
    for (; buffer[i] != '\0'; i++)
    {
        int j = 0;                                                // example:
        while (str[j] != '\0' && buffer[i+j] == str[j]) { j++; }  //  buffer="hello world'\0'"
                                                                  //  str="hel'\0'"
                                                                  //
                                                                  //  buff   "hello world'\0'"
                                                                  //  str --> ^^^
                                                                  //  ---------> exit
        if (j == str_len)
        {
            in_search = 0;  // the search is finished, string found
            return 1;     
        }
    }

    return -1;
}
// re:d3>


/* Copies the required data from a buffer */
void GetDataFromBuffer (char *startString, char *endString, char *buffertocopyfrom, char *buffertocopyinto)
{
    int startStringLength = strlen (startString);
    int endStringLength   = strlen (endString);
    int so_far            = 0;
    int indx              = 0;
    int startposition     = 0;
    int endposition       = 0;

repeat1:
    while (startString[so_far] != buffertocopyfrom[indx]) indx++;
    if (startString[so_far] == buffertocopyfrom[indx])
    {
        while (startString[so_far] == buffertocopyfrom[indx])
        {
            so_far++;
            indx++;
        }
    }

    if (so_far == startStringLength) startposition = indx;
    else
    {
        so_far =0;
        goto repeat1;
    }

    so_far = 0;

repeat2:
    while (endString[so_far] != buffertocopyfrom[indx]) indx++;
    if (endString[so_far] == buffertocopyfrom[indx])
    {
        while (endString[so_far] == buffertocopyfrom[indx])
        {
            so_far++;
            indx++;
        }
    }

    if (so_far == endStringLength) endposition = indx-endStringLength;
    else
    {
        so_far =0;
        goto repeat2;
    }

    so_far = 0;
    indx=0;

    for (int i=startposition; i<endposition; i++)
    {
        buffertocopyinto[indx] = buffertocopyfrom[i];
        indx++;
    }
}


void Uart_flush (void)
{
    memset(_rx_buffer->buffer,'\0', UART_BUFFER_SIZE);
    _rx_buffer->head = 0;
    _rx_buffer->tail = 0;
}


int Uart_peek()
{
    if(_rx_buffer->head == _rx_buffer->tail)
    {
        return -1;
    }
    else
    {
        return _rx_buffer->buffer[_rx_buffer->tail];
    }
}


/* copies the data from the incoming buffer into our buffer
 * Must be used if you are sure that the data is being received
 * it will copy irrespective of, if the end string is there or not
 * if the end string gets copied, it returns 1 or else 0
 * Use it either after (IsDataAvailable) or after (Wait_for) functions
 */
int Copy_upto (char *string, char *buffertocopyinto)
{
    int so_far =0;
    int len = strlen (string);
    int indx = 0;

again:
    while (Uart_peek() != string[so_far])
    {
        buffertocopyinto[indx] = _rx_buffer->buffer[_rx_buffer->tail];
        _rx_buffer->tail = (unsigned int)(_rx_buffer->tail + 1) % UART_BUFFER_SIZE;
        indx++;
        while (!IsDataAvailable());

    }
    while (Uart_peek() == string [so_far])
    {
        so_far++;
        buffertocopyinto[indx++] = Uart_read();
        if (so_far == len) return 1;
        timeout = TIMEOUT_DEF;
        while ((!IsDataAvailable())&&timeout);
        if (timeout == 0) return 0;
    }

    if (so_far != len)
    {
        so_far = 0;
        goto again;
    }

    if (so_far == len) return 1;
    else return 0;
}


/* must be used after wait_for function
 * get the entered number of characters after the entered string
 */
int Get_after (char *string, uint8_t numberofchars, char *buffertosave)
{
    for (int indx=0; indx<numberofchars; indx++)
    {
        timeout = TIMEOUT_DEF;
        while ((!IsDataAvailable())&&timeout);  // wait until some data is available
        if (timeout == 0) return 0;  // if data isn't available within time, then return 0
        buffertosave[indx] = Uart_read();  // save the data into the buffer... increments the tail
    }
    return 1;
}


/* Waits for a particular string to arrive in the incoming buffer... It also increments the tail
 * returns 1, if the string is detected
 */
// added timeout feature so the function won't block the processing of the other functions
int Wait_for (char *string)
{
    int so_far =0;
    int len = strlen (string);

again:
    timeout = TIMEOUT_DEF;
    while ((!IsDataAvailable())&&timeout);  // let's wait for the data to show up
    if (timeout == 0) return 0;
    while (Uart_peek() != string[so_far])  // peek in the rx_buffer to see if we get the string
    {
        if (_rx_buffer->tail != _rx_buffer->head)
        {
            _rx_buffer->tail = (unsigned int)(_rx_buffer->tail + 1) % UART_BUFFER_SIZE;  // increment the tail
        }

        else
        {
            return 0;
        }
    }
    while (Uart_peek() == string [so_far]) // if we got the first letter of the string
    {
        // now we will peek for the other letters too
        so_far++;
        _rx_buffer->tail = (unsigned int)(_rx_buffer->tail + 1) % UART_BUFFER_SIZE;  // increment the tail
        if (so_far == len) return 1;
        timeout = TIMEOUT_DEF;
        while ((!IsDataAvailable())&&timeout);
        if (timeout == 0) return 0;
    }

    if (so_far != len)
    {
        so_far = 0;
        goto again;
    }

    if (so_far == len) return 1;
    else return 0;
}


void Uart_isr (UART_HandleTypeDef *huart)
{
    uint32_t isrflags   = READ_REG(huart->Instance->SR);
    uint32_t cr1its     = READ_REG(huart->Instance->CR1);

    /* if DR is not empty and the Rx Int is enabled */
    if (((isrflags & USART_SR_RXNE) != RESET) && ((cr1its & USART_CR1_RXNEIE) != RESET))
    {
        /******************
         *  @note   PE (Parity error), FE (Framing error), NE (Noise error), ORE (Overrun
         *          error) and IDLE (Idle line detected) flags are cleared by software
         *          sequence: a read operation to USART_SR register followed by a read
         *          operation to USART_DR register.
         * @note   RXNE flag can be also cleared by a read to the USART_DR register.
         * @note   TC flag can be also cleared by software sequence: a read operation to
         *          USART_SR register followed by a write operation to USART_DR register.
         * @note   TXE flag is cleared only by a write to the USART_DR register.

         *********************/
        huart->Instance->SR;                       /* Read status register */
        unsigned char c = huart->Instance->DR;     /* Read data register */
        store_char (c, _rx_buffer);  // store data in buffer
        return;
    }

    /*If interrupt is caused due to Transmit Data Register Empty */
    if (((isrflags & USART_SR_TXE) != RESET) && ((cr1its & USART_CR1_TXEIE) != RESET))
    {
        if(tx_buffer.head == tx_buffer.tail)
        {
            // Buffer empty, so disable interrupts
            __HAL_UART_DISABLE_IT(huart, UART_IT_TXE);

        }

        else
        {
            // There is more data in the output buffer. Send the next byte
            unsigned char c = tx_buffer.buffer[tx_buffer.tail];
            tx_buffer.tail = (tx_buffer.tail + 1) % UART_BUFFER_SIZE;

            /******************
             *  @note   PE (Parity error), FE (Framing error), NE (Noise error), ORE (Overrun
             *          error) and IDLE (Idle line detected) flags are cleared by software
             *          sequence: a read operation to USART_SR register followed by a read
             *          operation to USART_DR register.
             * @note   RXNE flag can be also cleared by a read to the USART_DR register.
             * @note   TC flag can be also cleared by software sequence: a read operation to
             *          USART_SR register followed by a write operation to USART_DR register.
             * @note   TXE flag is cleared only by a write to the USART_DR register.

             *********************/

            huart->Instance->SR;
            huart->Instance->DR = c;

        }
        return;
    }
}


/*** Deprecated For now. This is not needed, try using other functions to meet the requirement ***/
/*
   uint16_t Get_position (char *string)
   {
   static uint8_t so_far;
   uint16_t counter;
   int len = strlen (string);
   if (_rx_buffer->tail>_rx_buffer->head)
   {
   if (Uart_read() == string[so_far])
   {
   counter=UART_BUFFER_SIZE-1;
   so_far++;
   }
   else so_far=0;
   }
   unsigned int start = _rx_buffer->tail;
   unsigned int end = _rx_buffer->head;
   for (unsigned int i=start; i<end; i++)
   {
   if (Uart_read() == string[so_far])
   {
   counter=i;
   so_far++;
   }
   else so_far =0;
   }

   if (so_far == len)
   {
   so_far =0;
   return counter;
   }
   else return -1;
   }


   void Get_string (char *buffer)
   {
   int index=0;

   while (_rx_buffer->tail>_rx_buffer->head)
   {
   if ((_rx_buffer->buffer[_rx_buffer->head-1] == '\n')||((_rx_buffer->head == 0) && (_rx_buffer->buffer[UART_BUFFER_SIZE-1] == '\n')))
   {
   buffer[index] = Uart_read();
   index++;
   }
   }
   unsigned int start = _rx_buffer->tail;
   unsigned int end = (_rx_buffer->head);
   if ((_rx_buffer->buffer[end-1] == '\n'))
   {

   for (unsigned int i=start; i<end; i++)
   {
   buffer[index] = Uart_read();
   index++;
   }
   }
   }
   */
