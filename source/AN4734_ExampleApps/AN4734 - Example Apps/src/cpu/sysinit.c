/*
 * File:        sysinit.c
 * Purpose:     Kinetis Configuration
 *              Initializes processor to a default state
 *
 * Notes:
 *
 */

#include "common.h"
#include "sysinit.h"
#include "uart.h"
#include "rtc.h"

/********************************************************************/

/* Actual system clock frequency */
int mcg_clk_hz;
int mcg_clk_khz;
int core_clk_khz;
int periph_clk_khz;
int pll_clk_khz;
int uart0_clk_khz;



/********************************************************************/
void sysinit (void)
{
        /* Enable all of the port clocks. These have to be enabled to configure
         * pin muxing options, so most code will need all of these on anyway.
         */
        SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                      | SIM_SCGC5_PORTB_MASK
                       );
        
        // releases hold with ACKISO:  Only has an effect if recovering from VLLS1, VLLS2, or VLLS3
        // if ACKISO is set you must clear ackiso before calling pll_init 
        //    or pll init hangs waiting for OSC to initialize
        // if osc enabled in low power modes - enable it first before ack
        // if I/O needs to be maintained without glitches enable outputs and modules first before ack.
        if (PMC_REGSC &  PMC_REGSC_ACKISO_MASK)
        PMC_REGSC |= PMC_REGSC_ACKISO_MASK;

#if defined(NO_PLL_INIT)
        mcg_clk_hz = 21000000; //FEI mode
        
 //       SIM_SOPT2 &= !SIM_SOPT2_PLLFLLSEL_MASK; // clear PLLFLLSEL to select the FLL for this clock source
        
        uart0_clk_khz = (mcg_clk_hz / 1000); // the UART0 clock frequency will equal the FLL frequency
       
#else 
       /* Ramp up the system clock */
       /* Set the system dividers */
      
        SIM_CLKDIV1 = ( 0
                        | SIM_CLKDIV1_OUTDIV1(0)
                        | SIM_CLKDIV1_OUTDIV4(1) );
 
      // only for demo, reset rtc,user can remove it
      rtc_reset();
   
      mcg_clk_hz =  fei_fee(CLK0_FREQ_HZ,HIGH_GAIN,CLK0_TYPE);
      
      if (mcg_clk_hz < 0x100)
         while(1);

       uart0_clk_khz = mcg_clk_hz; // UART0 clock frequency will equal half the PLL frequency
#endif      

	/*
         * Use the value obtained from the pll_init function to define variables
	 * for the core clock in kHz and also the peripheral clock. These
	 * variables can be used by other functions that need awareness of the
	 * system frequency.
	 */
        mcg_clk_khz = mcg_clk_hz / 1000;
  	    core_clk_khz = mcg_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV1_MASK) >> 28)+ 1);
        periph_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> 16)+ 1);
        
        /* Enable pin interrupt for the abort button - PTA4 */
        /* This pin could also be used as the NMI interrupt, but since the NMI
         * is level sensitive each button press will cause multiple interrupts.
         * Using the GPIO interrupt instead means we can configure for an edge
         * sensitive interrupt instead = one interrupt per button press.
         */
//        enable_abort_button();
        
       // clk_out_init();
        
  	/* Enable the pins for the selected SCI */
#ifdef DEBUG_PRINT
#ifdef USE_UART0
#ifdef UART_PIN_PTB_1_2_
        /* Enable the SCI1_TXD function on PTC4 */
  	PORTB_PCR1 = PORT_PCR_MUX(0x2); // LPSCI is alt3 function for this pin
  		
  	/* Enable the SCI1_RXD function on PTC3 */
  	PORTB_PCR2 = PORT_PCR_MUX(0x2); // LPSCI is alt3 function for this pin 
#else
        
        /* Enable the SCI1_TXD function on PTC4 */
  	PORTB_PCR3 = PORT_PCR_MUX(0x3); // LPSCI is alt3 function for this pin
  		
  	/* Enable the SCI1_RXD function on PTC3 */
  	PORTB_PCR4 = PORT_PCR_MUX(0x3); // LPSCI is alt3 function for this pin
#endif         
        SIM_SOPT2 |= SIM_SOPT2_UART0SRC(1); // select the FLLFLLCLK as UART0 clock source
        
        uart0_init (TERM_PORT,uart0_clk_khz,TERMINAL_BAUD);
#else

  	if (TERM_PORT == UART1_BASE_PTR)
  	{
                 /* Enable the SCI1_TXD function on PTC4 */
  		PORTC_PCR4 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
  		
  		/* Enable the SCI1_RXD function on PTC3 */
  		PORTC_PCR3 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
  	}
        
        if (TERM_PORT == UART2_BASE_PTR)
  	{
                 /* Enable the SCI2_TXD function on PTD3 */
  		PORTD_PCR3 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
  		
  		/* Enable the SCI2_RXD function on PTD2 */
  		PORTD_PCR2 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
  	}
        
  	SCI_init (TERM_PORT, periph_clk_khz, TERMINAL_BAUD);
#endif
#endif
}
/********************************************************************/
void enable_abort_button(void)
{
    /* Configure the PTA4 pin for its GPIO function */
    PORTA_PCR4 = PORT_PCR_MUX(0x1); // GPIO is alt1 function for this pin
    
    /* Configure the PTA4 pin for rising edge interrupts */
    PORTA_PCR4 |= PORT_PCR_IRQC(0x9); 
    
    /* Enable the associated IRQ in the NVIC */
    enable_irq(30);      
}
/********************************************************************/

/********************************************************************/
void clk_out_init(void)
{
 	/* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
	PORTA_PCR15 = ( PORT_PCR_MUX(0x3));
        
        /* Select the CLKOUT in the SMI_SOPT2 mux */
        SIM_SOPT2 |= SIM_SOPT2_CLKOUTSEL(4);
}
