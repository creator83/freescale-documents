/******************************************************************************
*
* Freescale Semiconductor Inc.
* (c) Copyright 2011 Freescale Semiconductor, Inc.
* ALL RIGHTS RESERVED.
*
****************************************************************************//*!
*
* @file     sgtl5000.c
*
* @version  1.0.1.0
* 
* @date     Mar-22-2012
*
* @brief    TWR-AUDIO SGTL5000 codec functions
* 
*******************************************************************************/
#include    "sgtl5000.h"

#include <mqx.h>
#include <bsp.h>
#include <i2c.h>
    
/* I2C Address */
#define I2C_AUDIO_CODEC_ADDRESS 0x0A  // SGTL5000

FILE_PTR fd; 

/***************************************************************************//*!
* @function sgtl5000_Init
*
* @brief    Init I2S peripheral on Kinetis MCU
****************************************************************************/
unsigned int sgtl5000_Init (void)
{
    
    unsigned int returnValue = 0;
    //# Configuration for 1.8V, 1.8V, 1.8V VDDD, VDDA, VDDIO
    //# Set VDDD regulator
    returnValue = writeSgtl500Reg( SGTL5000_CHIP_LINREG_CTRL, 0x000c);

    // Enable internal oscillator for charge pump
    writeSgtl500Reg( SGTL5000_CHIP_CLK_TOP_CTRL, 0x0800);

    //# Set VAG level, ref bias to -50%
    //writeSgtl500Reg( SGTL5000_CHIP_REF_CTRL, 0x004E);
    
    writeSgtl500Reg( SGTL5000_CHIP_REF_CTRL, 0x01EE);
        
    //# Set LINREG level to 1V
   writeSgtl500Reg( SGTL5000_CHIP_LINREG_CTRL, 0x000C);

    //# Set LINEOUT voltage/current
    writeSgtl500Reg( SGTL5000_CHIP_LINE_OUT_CTRL, 0x0F04);

    //# Set LO volume
    //writeSgtl500Reg( SGTL5000_CHIP_LINE_OUT_VOL, 0x0F0F);
    writeSgtl500Reg( SGTL5000_CHIP_LINE_OUT_VOL, 0x0000);
    

    //# Power up inputs/outputs  
    //# Power up CPUMP, Power up VAG, Turn off VDDD regulators (using ext supplies)
    writeSgtl500Reg( SGTL5000_CHIP_ANA_POWER, 0x4AFF);
  
    //# Power up digital blocks
    writeSgtl500Reg( SGTL5000_CHIP_DIG_POWER, 0x01FF);

    //# Set clocks for 48kHz, 256*Fs
    //writeSgtl500Reg( SGTL5000_CHIP_CLK_CTRL,0x0008);

    // 44.1 kHz
     writeSgtl500Reg( SGTL5000_CHIP_CLK_CTRL,0x0004);
    
    //# Set Master, 24-bit I2S
    writeSgtl500Reg( SGTL5000_CHIP_I2S_CTRL, 0x0010);
    
    //# Set I/O configuration
    // adc in to i2s out (i.e. input to Kinetis tower card)
    // i2s in to dac (i.e.output from Kinetis tower card)
    
    // I2S_IN->DAC 
    //writeSgtl500Reg( SGTL5000_CHIP_SSS_CTRL, 0x0010);
    
    // I2S_IN->DAP->DAC->LINEOUT, HP
    writeSgtl500Reg(SGTL5000_CHIP_DAP_CTRL, 0x0001); // DAP_EN
    writeSgtl500Reg( SGTL5000_CHIP_SSS_CTRL, 0x0070);
    
    //# Set Unmute DAC, ADC
    //writeSgtl500Reg( SGTL5000_CHIP_ADCDAC_CTRL, 0x0230);
    writeSgtl500Reg( SGTL5000_CHIP_ADCDAC_CTRL, 0x0000);        
    writeSgtl500Reg( SGTL5000_CHIP_DAC_VOL, 0x0000);
    
    writeSgtl500Reg( SGTL5000_CHIP_LINE_OUT_VOL, 0x0F0F); // Lineout Volume Adjustment
    
    // Set Line Out Analog Ground to 1.55V
    writeSgtl500Reg( SGTL5000_CHIP_LINE_OUT_CTRL, 0x0F1E); 
    
    //For Input from Line IN
    //writeSgtl500Reg( SGTL5000_CHIP_ANA_CTRL ,0x0004);
    
    // For Input from MIC
    writeSgtl500Reg( SGTL5000_CHIP_ANA_CTRL ,0x0000);
    
    writeSgtl500Reg( SGTL5000_CHIP_DAP_MAIN_CHAN,0xFFFF);
    
    // Turn ON AVC - Very Important for gain level
    writeSgtl500Reg( SGTL5000_CHIP_DAP_AVC_CTRL,0x7101); // Try AVC enable with max. GAIN
    
    writeSgtl500Reg( SGTL5000_CHIP_DAP_BASS_ENHANCE,0x0021); // Enable Bass Boost
    
    writeSgtl500Reg (SGTL5000_CHIP_DAP_BASS_ENHANCE_CTRL,0x0000);
    
    return returnValue;
}

// Band 0 - 115Hz
// Band 1 - 330Hz
// Band 2 - 990Hz
// Band 3 - 3000Hz
// Band 4 - 9900Hz
// Input: set_dB +/-12dB

/**************************************************************************//*!
*
* @function Sgtl500_Set_Equalizer
*
* @brief    5-band graphic EQ
*
* @param    band: 0,1,2,3,4: 115, 330, 990, 3000, 9900Hz
*           volume: -12 to 12 dB
******************************************************************************/
void Sgtl500_Set_Equalizer(unsigned char band_addr, signed char dBVal)
{
  
  unsigned char set_dB;
  if((band_addr > 4) || (dBVal >12) || (dBVal < -12) ) return;
  
  set_dB = (unsigned char)(dBVal * 4) + 47;
  
  if(set_dB > 0x5F) return;
  
  // Write settings to SGTL5000
  writeSgtl500Reg(SGTL5000_DAP_AUDIO_EQ,0x0003);
  writeSgtl500Reg((SGTL5000_DAP_AUDIO_EQ_BASS_BAND0 + band_addr), set_dB);
  
}

/**************************************************************************//*!
*
* @function Sgtl500_Set_Volume
*
* @brief    Sets volume for left and right channel
*
* @param    vol_left, vol_right, 0.. vol_steps = 100%
*       
******************************************************************************/
void Sgtl500_Set_Volume(unsigned char vol_left, unsigned char vol_right, unsigned char vol_steps)
{   
   uint16_t volume;
   unsigned char * p_volume = (unsigned char*)&volume;
   
   if(vol_left > vol_steps) vol_left = vol_steps;
   if(vol_right > vol_steps) vol_right = vol_steps;
   
   p_volume[0] = 0x80 - (vol_left * (0x80  / (vol_steps)));
   p_volume[1] = 0x80 - (vol_right * (0x80 / (vol_steps)));
  
   if(p_volume[0] > 0x7f) p_volume[0] = 0x7f;
   if(p_volume[1] > 0x7f) p_volume[1] = 0x7f;
   
   
   writeSgtl500Reg(SGTL5000_CHIP_ANA_HP_CTRL, volume);    
}

/**************************************************************************//*!
*
* @function writeSgtl500Reg
*
* @brief    Write to Sgtl5000 internal register by I2C bus
*
* @param    regNumber, regValue
*       
******************************************************************************/
unsigned int writeSgtl500Reg(unsigned short regNumber, unsigned short regValue) 
{  
    int i2c_device_address = (int)I2C_AUDIO_CODEC_ADDRESS;
    unsigned char i2cData[4];
    unsigned int ret_val =0;
     
    i2cData[0] = (regNumber & 0xFF00) >> 8;
    i2cData[1] = (unsigned char)(regNumber & 0x00FF);
    i2cData[2] = (regValue & 0xFF00) >> 8;
    i2cData[3] = (unsigned char)(regValue & 0x00FF);  
    
  /* Set the destination address */
  ret_val = ioctl (fd, IO_IOCTL_I2C_SET_DESTINATION_ADDRESS, &i2c_device_address);

  /* Write 2 bytes of data: the desired register and then the data */
  ret_val = fwrite (&i2cData, 1, 4, fd);  //data to write, size of unit, # of bytes to write, I2C device handler
  fflush (fd);

  /* Send out stop */
  ioctl (fd, IO_IOCTL_I2C_STOP, NULL);
  
  return (ret_val);
}

/**************************************************************************//*!
*
* @function InitializeI2C
*
* @brief    Install MQX I2C driver
*       
******************************************************************************/
void InitializeI2C(void)
{
  /* Open the I2C driver, and assign a I2C device handler*/
  fd = fopen ("i2c0:", NULL);
  if (fd == NULL)
  {
    //printf ("Failed to open the I2C driver!\n");
    _time_delay (200L);
    _mqx_exit (1L);
  }

  /* Set I2C into Master mode */
  ioctl (fd, IO_IOCTL_I2C_SET_MASTER_MODE, NULL);
}



