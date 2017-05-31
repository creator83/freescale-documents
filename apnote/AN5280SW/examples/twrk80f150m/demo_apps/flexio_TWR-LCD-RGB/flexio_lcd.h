/*
 * Copyright (c) 2014, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef _FLEXIO_LCD_H
#define _FLEXIO_LCD_H

#include "fsl_clock_manager.h"
#include "fsl_interrupt_manager.h"

#include "fsl_sim_hal.h"
#include "fsl_dmamux_hal.h"
#include "fsl_edma_hal.h"
#include "fsl_flexio_hal.h"
#include "flexio_lcd_hal.h"
#include "lcd.h"


/*******************************************************************************
 * Enums
 ******************************************************************************/

typedef enum
{
    kColorBar = 0,
    kBlackWhite,
    kVerticalStripes,
    numPatterns,        // number of patterns available
} lcd_pattern_t;        // List of patterns available to draw

typedef void (* DrawFunc)(uint8_t *);

/*******************************************************************************
 * Defines
 ******************************************************************************/
#define SETUP_FLEXIO_INTERRUPT  0          // Useful for debugging, and checking timing

/*******************************************************************************
 * Function prototypes
 ******************************************************************************/
void FLEXIO_LCD_Init(flexio_lcd_dev_t *devPtr, uint8_t * frame);

/*******************************************************************************
 * Global variables
 ******************************************************************************/
extern uint8_t u8LCDFrameBuffer[];
extern flexio_lcd_dev_t gFlexioLCDDevStruct;

/*!
 * @brief Starts FlexIO and DMA to drive LCD
 *
 * @param devPtr Pointer to the device.
 * @param frame Pointer to frame buffer.
 * @return void
 */
void FLEXIO_LCD_Start(flexio_lcd_dev_t *devPtr, uint8_t * frame);
   
/*!
 * @brief Fills frame buffer vertical stripes
 *
 * @param frame Pointer to frame buffer.
 * @return void
 */
void FLEXIO_LCD_FrameVerticalStripes(uint8_t * frame);

/*!
 * @brief Fills frame with alternating columns of black and white pixels
 *
 * @param frame Pointer to frame buffer.
 * @return void
 */
void FLEXIO_LCD_FrameBlackWhiteColumns(uint8_t * frame);

/*!
 * @brief Fills frame with color bar pattern
 *
 * @param frame Pointer to frame buffer.
 * @return void
 */
void FLEXIO_LCD_FrameColorBars(uint8_t * frame);

#endif /*_FLEXIO_LCD_H*/

