/*****************************************************************************
*
* (c) 2011 Freescale Inc.
* ALL RIGHTS RESERVED.
*
**************************************************************************//*!
*
* @file      i2s.c
*
* @version   1.0.1.0
*
* @date      Mar-22-2012
*
* @author    b01800
*
* @brief     i2s audio bus peripheral init and control functions
*  
*****************************************************************************/

#include <mqx.h>
#include <bsp.h>

#include "i2s.h"

extern void I2S_IRQHandler(pointer foo); 
extern void dma_ch0_isr(pointer foo);

/***************************************************************************//*!
* @function I2S_Switch_Clock
*
* @brief I2S select module source clock
*
* @param 1 = 11.2896MHz 
*        0 = 12.2880MHz  
*
****************************************************************************/
void I2S_Switch_Clock(unsigned char clk)
{
  
  // At first Disable system clock to the I2S module
    SIM_SCGC6 &= ~(SIM_SCGC6_I2S_MASK);
    SIM_SOPT2 |= SIM_SOPT2_I2SSRC(0);   //I2S clock source is system clock
  
  if(clk)
  {
    // Divide to get the 11.2896 MHz from 96MHz (96* (2/17))
    SIM_CLKDIV2 |= SIM_CLKDIV2_I2SDIV(16) | SIM_CLKDIV2_I2SFRAC(1);
  }
  else
  {
    // Divide to get the 12.2880 MHz from 96MHz (96* (16/125))
    SIM_CLKDIV2 |= SIM_CLKDIV2_I2SDIV(124) | SIM_CLKDIV2_I2SFRAC(15);
  }
  
    // re-enable system clock to the I2S module
    SIM_SCGC6 |= SIM_SCGC6_I2S_MASK;
}

/***************************************************************************//*!
* @function I2S_Init
*
* @brief    Init I2S peripheral on Kinetis MCU
****************************************************************************/
void I2S_Init(void)
{
   
    /* Enable SSI clock in SIM */ 
    // At first Disable system clock to the I2S module
    SIM_SCGC6 &= ~(SIM_SCGC6_I2S_MASK);
    
    SIM_SOPT2 |= SIM_SOPT2_I2SSRC(0);   //I2S clock source is system clock
    
    // divide clock source to I2S module to generate desired frequency
    
    // 48kHz
    //SIM_CLKDIV2 |= SIM_CLKDIV2_I2SDIV(7) | SIM_CLKDIV2_I2SFRAC(0);
    
    // Divide to get the 11.2896 MHz from 96MHz
    // for 44.1 kHz
    SIM_CLKDIV2 |= SIM_CLKDIV2_I2SDIV(16) | SIM_CLKDIV2_I2SFRAC(1);
    
    
    //sDbgPrint(1,"SIM_CLKDIV2 is 0x%08x\r", SIM_CLKDIV2); //b01800
    
    printf("SIM_CLKDIV2 is 0x%08x\n", SIM_CLKDIV2);

    // enable system clock to the I2S module
    SIM_SCGC6 |= SIM_SCGC6_I2S_MASK;

    /* enable SSI pins */
    PORTE_PCR6 |= PORT_PCR_MUX(0x04);  // configure port for MCLK output
   
    //GPIO for SSI0_TX_BLCK
    PORTE_PCR12 |= PORT_PCR_MUX(0x04);  //
    //PORTA_PCR14 |= PORT_PCR_MUX(0x06);  //

   
    
    //GPIO for SSI0_TX_FS
    PORTE_PCR11 |= PORT_PCR_MUX(0x04);  //
    //PORTA_PCR13 |= PORT_PCR_MUX(0x06);  //
    
   
    //GPIO for SSI0_TXD
    PORTE_PCR10 |= PORT_PCR_MUX(0x04);  //
    //PORTA_PCR12 |= PORT_PCR_MUX(0x06);  //
    
    
   
    /* Issue a SSI reset (bit 0 of I2S_CR */

    I2S_CR &= ~I2S_CR_SSIEN_MASK;
    
    // initialize I2S Control Register (I2S_CR)
    // note reset values are all zero

    I2S_CR =0
           | I2S_CR_I2SMODE(1)    // Set I2S master mode
//         | I2S_CR_I2SMODE(2)    // Set I2S slave mode
           | I2S_CR_SYSCLKEN_MASK    // Set clock out on SSI_MCLK pin
           | I2S_CR_SYN_MASK    // Enable synchronous mode
          //| I2S_CR_NET_MASK    // Enable network mode
          //| I2S_CR_RE_MASK     // Enable the receive section, this does not enable interrupts
            | I2S_CR_TE_MASK;     // Enable the transmit section, this does not enable interrupts
          //  | I2S_CR_TCHEN_MASK  // Enable two channel mode
 
    // initialize I2S Transmit Configuration Register (I2S_TCR)
    // note reset values are all zero except for TXBIT0

    I2S_TCR = 0
            | I2S_TCR_TXDIR_MASK  // int generated bit clock
            | I2S_TCR_TFDIR_MASK  // int generated frame sync
            | I2S_TCR_TSCKP_MASK  // Clock data on falling edge of bit clock
            | I2S_TCR_TFSI_MASK   // Frame sync active low
            | I2S_TCR_TEFS_MASK   // TX frame sync 1 bit before data
            //| I2S_TCR_TFSL_MASK //Tx frame sync length set to one-word-long-frame
            | I2S_TCR_TXBIT0_MASK //Tx shifting bit0 of TXSR
            | I2S_TCR_TFEN0_MASK;  // TX FIFO 1 enabled
            //| I2S_TCR_TFEN1_MASK // TX FIFO 0 enabled
    
    //I2S_TCR &= ~I2S_TCR_TXBIT0_MASK;
       
    
    // initialize I2S Transmit Control Registers (I2S_TCCR)
    // note reset values are all zero except for DIV2
    
    // refer to Table 55-28, MCLK=12.288MHz, BCLK=1536kHz, LRCLK=48kHz 
    //I2S_TCCR = I2S_TCCR_WL(0xb)  | // 24 bit word length
    I2S_TCCR = I2S_TCCR_WL(0x7)  | // 24 bit word length
    
            I2S_TCCR_DC(1) | // Frame rate divider
            I2S_TCCR_PM(3);
             
       
    printf("I2S_TCCR: 0x%04x\n", I2S_TCCR);
   
    //_time_delay(1000);
        
    printf("I2S_RCCR: 0x%04x\n", I2S_RCCR);
    //_time_delay(1000);
    

    /* set transmit FIFO watermark */
    
    /*
    I2S_FCSR = 0
            | I2S_FCSR_TFWM0(2)
            | I2S_FCSR_TFWM1(2)
            ;
    */
    
    
    I2S_FCSR = 0
            | I2S_FCSR_TFWM0(2)
            | I2S_FCSR_TFWM1(2)
            ;
    
    // initialize I2S Interrupt Enable Register (I2S_IER)   
    I2S_IER =   0 /* interrupts */
      
      
// since I2S_IER_TIE is disabled, there are no transmit interrupts
              //| I2S_IER_TIE_MASK      /* turn on transmit interrupts */
              // | I2S_IER_TDE0EN_MASK   /* turn on transmit data 0 empty */
              // | I2S_IER_TDE1EN_MASK   /* turn on transmit data 1 empty */ 
              // | I2S_IER_TFE1EN_MASK   /* turn on transmit frame 1 empty */
               | I2S_IER_TFE0EN_MASK   /* turn on transmit frame 0 empty */
               //| I2S_IER_RIE_MASK      /* turn on receive interrupts */
               //| I2S_IER_RDR0EN_MASK   /* turn on receive data 0 full */
               //| I2S_IER_RDR1EN_MASK   /* turn on receive data 1 full */
               | I2S_IER_TDMAE_MASK    /* DMA request enabled */
               ;


    /* enable IRQ:  SSI interrupt */
  
    I2S_CR |= I2S_CR_SSIEN_MASK;
    
} /* end init() */


/**************************************************************************//*!
* @function I2S_Switch_Clock
*
* @brief    Set the i2s data rate depending on the audio sample rate 
*
* @param    AdcChannel - channel on ADC 
*           
******************************************************************************/
void I2S_Set_Rate(int smprate)
{
  
  unsigned char pm_val, dc_val;
  
  // get the 11.2896 MHz from 96MHz
  if((smprate == 11025)||(smprate == 22050)||(smprate == 44100))
  {
    I2S_Switch_Clock(1);
  }
  
  // get the 12.2880 MHz from 96MHz (96* (16/125))
  if((smprate == 8000)||(smprate == 12000)||(smprate == 16000)||(smprate == 24000)||(smprate == 32000)||(smprate == 48000))
  {
    I2S_Switch_Clock(0);
  }
  
  // initialize I2S Transmit Control Registers (I2S_TCCR)
  // note reset values are all zero except for DIV2
  
  I2S_TCCR = (0 | I2S_TCCR_WL(0xb)); // 24 bit word length
    
   /* refer to Table */
  switch(smprate)
  {
    case 8000: pm_val=23; dc_val=1;
      break;
    case 11025: pm_val=15; dc_val=1;
      break;
    case 12000: pm_val=15; dc_val=1;
      break;
    case 16000: pm_val=11; dc_val=1;
      break;
    case 22050: pm_val=7; dc_val=1;
      break;
    case 24000: pm_val=7; dc_val=1;
      break;
    case 32000: pm_val=5; dc_val=1;
      break;
    case 44100: pm_val=3; dc_val=1;
      break;
    case 48000: pm_val=3; dc_val=1;
      break;
    default:  pm_val=3; dc_val=1;
      break;
  } 
    
  I2S_TCCR |= I2S_TCCR_DC(dc_val) | I2S_TCCR_PM(pm_val);    
}





