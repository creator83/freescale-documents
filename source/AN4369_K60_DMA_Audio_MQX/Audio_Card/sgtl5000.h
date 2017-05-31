/******************************************************************************
*
* Freescale Semiconductor Inc.
* (c) Copyright 2011 Freescale Semiconductor, Inc.
* ALL RIGHTS RESERVED.
*
****************************************************************************//*!
*
* @file     sgtl5000.h
*
* @version  1.0.1.0
* 
* @date     Mar-22-2012
*
* @brief    SGTL5000 codec functions
* 
*******************************************************************************/

#ifndef _SGTL500_H
#define _SGTL500_H

/***************************************************************************
* API
****************************************************************************/
unsigned int sgtl5000_Init (void);
void InitializeI2C(void);
unsigned int writeSgtl500Reg(unsigned short regNumber, unsigned short regValue);
void Sgtl500_Set_Volume(unsigned char vol_left, unsigned char vol_right, unsigned char vol_steps);
void Sgtl500_Set_Equalizer(unsigned char band_addr, signed char dBVal);


/* * Register values. */
#define SGTL5000_CHIP_ID		        0x0000
#define SGTL5000_CHIP_DIG_POWER			0x0002
#define SGTL5000_CHIP_CLK_CTRL			0x0004
#define SGTL5000_CHIP_I2S_CTRL			0x0006
#define SGTL5000_CHIP_SSS_CTRL			0x000a
#define SGTL5000_CHIP_ADCDAC_CTRL		0x000e
#define SGTL5000_CHIP_DAC_VOL			0x0010
#define SGTL5000_CHIP_PAD_STRENGTH		0x0014
#define SGTL5000_CHIP_ANA_ADC_CTRL		0x0020
#define SGTL5000_CHIP_ANA_HP_CTRL		0x0022
#define SGTL5000_CHIP_ANA_CTRL			0x0024
#define SGTL5000_CHIP_LINREG_CTRL		0x0026
#define SGTL5000_CHIP_REF_CTRL			0x0028
#define SGTL5000_CHIP_MIC_CTRL			0x002a
#define SGTL5000_CHIP_LINE_OUT_CTRL		0x002c
#define SGTL5000_CHIP_LINE_OUT_VOL		0x002e
#define SGTL5000_CHIP_ANA_POWER			0x0030
#define SGTL5000_CHIP_PLL_CTRL			0x0032
#define SGTL5000_CHIP_CLK_TOP_CTRL		0x0034
#define SGTL5000_CHIP_ANA_STATUS		0x0036
#define SGTL5000_CHIP_SHORT_CTRL		0x003c
#define SGTL5000_CHIP_ANA_TEST2			0x003a
#define SGTL5000_CHIP_DAP_BASS_ENHANCE          0x0104
#define SGTL5000_CHIP_DAP_BASS_ENHANCE_CTRL     0x0106
    
#define SGTL5000_DAP_AUDIO_EQ                   0x0108
#define SGTL5000_DAP_AUDIO_EQ_BASS_BAND0        0x0116
#define SGTL5000_DAP_AUDIO_EQ_BASS_BAND1        0x0118
#define SGTL5000_DAP_AUDIO_EQ_BASS_BAND2        0x011A
#define SGTL5000_DAP_AUDIO_EQ_BASS_BAND3        0x011C
#define SGTL5000_DAP_AUDIO_EQ_BASS_BAND4        0x011E

#define SGTL5000_CHIP_DAP_AVC_CTRL              0x0124
#define SGTL5000_CHIP_DAP_MAIN_CHAN             0x0120
#define SGTL5000_CHIP_DAP_CTRL                  0x0100

#endif  // _SGTL500_H

