/*
 * File:        uart.c
 * Purpose:     Provide common uart routines for serial IO
 *
 * Notes:       
 *              
 */

#include "common.h"
#include "uart.h"

/********************************************************************/
/*
 * Initialize the uart for 8N1 operation, interrupts disabled, and
 * no hardware flow-control
 *
 * NOTE: Since the uarts are pinned out in multiple locations on most
 *       Kinetis devices, this driver does not enable uart pin functions.
 *       The desired pins should be enabled before calling this init function.
 *
 * Parameters:
 *  uartch      uart channel to initialize
 *  sysclk      uart module Clock in kHz(used to calculate baud)
 *  baud        uart baud rate
 */
void uart_init (UART_MemMapPtr uartch, int sysclk, int baud)
{
    register uint16 sbr;
    uint8 temp;
                                
         
      if (uartch == UART1_BASE_PTR)
        SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
      else
    	SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
      /* Make sure that the transmitter and receiver are disabled while we 
       * change settings.
       */
      UART_C2_REG(uartch) &= ~(UART_C2_TE_MASK
				| UART_C2_RE_MASK );

      /* Configure the uart for 8-bit mode, no parity */
      UART_C1_REG(uartch) = 0;	/* We need all default settings, so entire register is cleared */
    
      /* Calculate baud settings */
      sbr = (uint16)((sysclk*1000)/(baud * 16));
        
      /* Save off the current value of the uartx_BDH except for the SBR field */
      temp = UART_BDH_REG(uartch) & ~(UART_BDH_SBR(0x1F));
    
      UART_BDH_REG(uartch) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
      UART_BDL_REG(uartch) = (uint8)(sbr & UART_BDL_SBR_MASK);
  
      /* Enable receiver and transmitter */
      UART_C2_REG(uartch) |= (UART_C2_TE_MASK
	    		  | UART_C2_RE_MASK );
    
}
/********************************************************************/
/*
 * Wait for a character to be received on the specified uart
 *
 * Parameters:
 *  channel      uart channel to read from
 *
 * Return Values:
 *  the received character
 */
char uart_getchar (UART_MemMapPtr channel)
{
      /* Wait until character has been received */
      while (!(UART_S1_REG(channel) & UART_S1_RDRF_MASK));
    
      /* Return the 8-bit data from the receiver */
      return UART_D_REG(channel);
}
/********************************************************************/
/*
 * Wait for space in the uart Tx FIFO and then send a character
 *
 * Parameters:
 *  channel      uart channel to send to
 *  ch			 character to send
 */ 
void uart_putchar (UART_MemMapPtr channel, char ch)
{
      /* Wait until space is available in the FIFO */
      while(!(UART_S1_REG(channel) & UART_S1_TDRE_MASK));
    
      /* Send the character */
      UART_D_REG(channel) = (uint8)ch;
    
 }
/********************************************************************/
/*
 * Check to see if a character has been received
 *
 * Parameters:
 *  channel      uart channel to check for a character
 *
 * Return values:
 *  0       No character received
 *  1       Character has been received
 */
int uart_getchar_present (UART_MemMapPtr channel)
{
    return (UART_S1_REG(channel) & UART_S1_RDRF_MASK);
}
/********************************************************************/

/***************************************************************************
 * Begin UART0 functions
 **************************************************************************/
/********************************************************************/
/*
 * Initialize the uart for 8N1 operation, interrupts disabled, and
 * no hardware flow-control
 *
 * NOTE: Since the uarts are pinned out in multiple locations on most
 *       Kinetis devices, this driver does not enable uart pin functions.
 *       The desired pins should be enabled before calling this init function.
 *
 * Parameters:
 *  uartch      uart channel to initialize
 *  sysclk      uart module Clock in kHz(used to calculate baud)
 *  baud        uart baud rate
 */
void uart0_init (UARTLP_MemMapPtr uartch, int uart0clk, int baud)
{
    register uint16 sbr;
    uint8 temp;
    
    SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
    
    /* Make sure that the transmitter and receiver are disabled while we 
     * change settings.
     */
    UARTLP_C2_REG(uartch) &= ~(UARTLP_C2_TE_MASK
				| UARTLP_C2_RE_MASK );

      /* Configure the uart for 8-bit mode, no parity */
    UARTLP_C1_REG(uartch) = 0;	/* We need all default settings, so entire register is cleared */
    
      /* Calculate baud settings */
    temp = UART0_C4;
    temp = (temp & UARTLP_C4_OSR_MASK) + 1;
    sbr = (uint16)((uart0clk*1000)/(baud * (temp)));
    
    // If the OSR is between 4x and 8x then both
    // edge sampling MUST be turned on.  
    if ((temp >3) && (temp < 9))
    	UART0_C5|= UARTLP_C5_BOTHEDGE_MASK;
        
    /* Save off the current value of the uartx_BDH except for the SBR field */
    temp = UARTLP_BDH_REG(uartch) & ~(UARTLP_BDH_SBR(0x1F));
   
    UARTLP_BDH_REG(uartch) = temp |  UARTLP_BDH_SBR(((sbr & 0x1F00) >> 8));
    UARTLP_BDL_REG(uartch) = (uint8)(sbr & UARTLP_BDL_SBR_MASK);

    /* Enable receiver and transmitter */
    UARTLP_C2_REG(uartch) |= (UARTLP_C2_TE_MASK
              		  | UARTLP_C2_RE_MASK );
    
}
/********************************************************************/
/*
 * Wait for a character to be received on the specified uart
 *
 * Parameters:
 *  channel      uart channel to read from
 *
 * Return Values:
 *  the received character
 */
char uart0_getchar (UARTLP_MemMapPtr channel)
{
      /* Wait until character has been received */
      while (!(UARTLP_S1_REG(channel) & UARTLP_S1_RDRF_MASK));
    
      /* Return the 8-bit data from the receiver */
      return UARTLP_D_REG(channel);
}
/********************************************************************/
/*
 * Wait for space in the uart Tx FIFO and then send a character
 *
 * Parameters:
 *  channel      uart channel to send to
 *  ch			 character to send
 */ 
void uart0_putchar (UARTLP_MemMapPtr channel, char ch)
{
      /* Wait until space is available in the FIFO */
      while(!(UARTLP_S1_REG(channel) & UARTLP_S1_TDRE_MASK));
    
      /* Send the character */
      UARTLP_D_REG(channel) = (uint8)ch;
    
 }
/********************************************************************/
/*
 * Check to see if a character has been received
 *
 * Parameters:
 *  channel      uart channel to check for a character
 *
 * Return values:
 *  0       No character received
 *  1       Character has been received
 */
int uart0_getchar_present (UARTLP_MemMapPtr channel)
{
    return (UARTLP_S1_REG(channel) & UARTLP_S1_RDRF_MASK);
}
/********************************************************************/
