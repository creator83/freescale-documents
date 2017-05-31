/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2012 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file hid_joy.h
 *
 * @author
 *
 * @version
 *
 * @date 
 *
 * @brief The file contains declarations of HID joystick functions that can be
 * used in other files
 *
 *****************************************************************************/
#ifndef _USB_HID_H_
#define _USB_HID_H_

// macros
#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE  1
#endif

#define BIT0	(1<<0)
#define BIT1	(1<<1)
#define BIT2	(1<<2)
#define BIT3	(1<<3)

#if 1
	#define SW1_ACTIVE()  ((AbsolutePercentegePosition<25) && (AbsolutePercentegePosition>0))
	#define SW2_ACTIVE()  ((AbsolutePercentegePosition<50) && (AbsolutePercentegePosition>25))
	#define SW3_ACTIVE()  ((AbsolutePercentegePosition<75) && (AbsolutePercentegePosition>50))
	#define SW4_ACTIVE()  ((AbsolutePercentegePosition>75))
	
#else
	#define SW1_ACTIVE()  !(GPIOA_PDIR & 1)
	#define SW2_ACTIVE()  !(GPIOA_PDIR & (1<<2))
	#define SW3_ACTIVE()  !(GPIOA_PDIR & (1<<4)) // PTA4
	#define SW4_ACTIVE()  !(GPIOC_PDIR & (1<<3)) // PTC3
#endif

#define JOY_BUTTON_1      1
#define JOY_BUTTON_2      2
#define JOY_BUTTON_3      3
#define JOY_BUTTON_4      4


#define  CONTROLLER_ID   (0)   /* ID to identify USB CONTROLLER */

// prototypes
extern int hid_joy(void);

#endif

/****************************** END OF FILE **********************************/
