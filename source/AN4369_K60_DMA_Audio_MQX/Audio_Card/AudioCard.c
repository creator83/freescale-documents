/*****************************************************************************
*
* (c) 2011 Freescale Inc.
* ALL RIGHTS RESERVED.
*
**************************************************************************//*!
*
* @file      AudioCard.c
*
* @version   1.0.1.0
*
* @date      Mar-22-2012
*
* @author    b01800
*
* @brief     Init function for Freescale TWR-AUDIO SGTL card
*  
*****************************************************************************/
#include <mqx.h>
#include <bsp.h> 
#include <fio.h>
#include <io_gpio.h>
#include <i2c.h>
#include "AudioCard.h"
#include "audio_dma.h"

/***************************************************************************//*!
* @function AudioCard_Init
*
* @brief    Init I2C and I2S peripherals, configure TWR-AUDIO Card
****************************************************************************/
void AudioCard_Init()
{
   // initialize various subsystems   
  InitializeI2C(); // I2C needed for SGTL5000 codec remote control 
  I2S_Init();
  (void)sgtl5000_Init();
  I2S_Set_Rate(SAMPLERATE);
  Sgtl500_Set_Volume(32,32,32); // left, right, steps   
}


