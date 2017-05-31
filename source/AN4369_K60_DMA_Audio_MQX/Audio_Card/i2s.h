/*****************************************************************************
*
* (c) 2011 Freescale Inc.
* ALL RIGHTS RESERVED.
*
**************************************************************************//*!
*
* @file      i2s.h
*
* @version   1.0.1.0
*
* @date      Mar-22-2012
*
* @author    b01800
*
* @brief     header file for audio bus peripheral init and control functions
*  
*****************************************************************************/
#ifndef _I2S_H
#define _I2S_H

#ifndef I2S_CR
 #define I2S_CR I2S0_CR
#endif

#ifndef I2S_TCR
 #define I2S_TCR I2S0_TCR
#endif

#ifndef I2S_TCCR
 #define I2S_TCCR I2S0_TCCR
#endif

#ifndef I2S_RCCR
 #define I2S_RCCR I2S0_RCCR
#endif

#ifndef I2S_FCSR
 #define I2S_FCSR I2S0_FCSR
#endif

#ifndef I2S_IER
 #define I2S_IER I2S0_IER
#endif

/***************************************************************************
* API
****************************************************************************/
void I2S_Init(void);
void I2S_Set_Rate(int smprate);
void I2S_Switch_Clock(unsigned char clk);
void I2S_DMA_Init(void);
void I2S_DMA_Set(signed short *audio_src_buf, unsigned int buf_len, unsigned char stereo);

#endif  // I2S_H
