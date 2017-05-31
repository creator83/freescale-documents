/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2012 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file adc.h
 *
 * @author
 *
 * @version
 *
 * @date 
 *
 * @brief The file contains the parameters of ADC code for the joystick demo
 *
 *****************************************************************************/

#ifndef _ADC_H
#define _ADC_H
#include "types.h"

#define ADC_CH_POT		4	// channel 4 on tower board

//#define ADC_INT_EN
#define ADC_POLLING

//#define EIGHTBIT_MODE
//#define TENBIT_MODE
#define TWELVEBIT_MODE

//#define BANDGAP_EN
#define ADC_HW_SAMPLES_4	0
#define ADC_HW_SAMPLES_8	1
#define ADC_HW_SAMPLES_16	2
#define ADC_HW_SAMPLES_32	3

extern volatile int_16 AdcResult;


extern void ADC_Init(void);
extern void ADC_Cvt(unsigned char channel);
#endif
