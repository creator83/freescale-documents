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

#ifndef __LCDRGB_DRIVER_H__
#define __LCDRGB_DRIVER_H__

/*! @file */

/*
 * Field Definitions.
 */

/*******************************************************************************
 * Definitions
 ******************************************************************************/
   
#define LCD_PARALLEL_DATA_WIDTH         16      /*!< bits per pixel of LCD */
#define LCD_PIXELS_X                    480     /*!< number pixels on X axis */
#define LCD_PIXELS_Y                    272     /*!< number pixels on Y axis */
#define LCD_BYTES_PER_PIXEL             2
#define LCD_FRAME_PIXELS                (LCD_PIXELS_X * LCD_PIXELS_Y)
#define LCD_FRAME_BYTES                 (LCD_FRAME_PIXELS * LCD_BYTES_PER_PIXEL)
#define LCD_PIXEL_FREQUENCY             9000000 /*!< Frequency in Hz for Pixel clock */ 
#define HSYNC_PULSE_WIDTH               2       /*!< in PCLK periods */
#define HSYNC_FRONT_PORCH               2       /*!< in clock periods before HSYNC pulse */
#define HSYNC_BACK_PORCH                28      /*!< in clock periods after HYSNC pulse */
#define VSYNC_PULSE_WIDTH               2       /*!< in horz. lines */
#define VSYNC_FRONT_PORCH               2       /*!< in horz. lines before VSYNC pulse */
#define VSYNC_BACK_PORCH                10      /*!< in horz. lines after VSYNC pulse */
   
/* Pixel Colors */
#define BLACK           0x0000
#define WHITE           0xFFFF
#define RED             0xF800
#define GREEN           0x07E0
#define BLUE            0x001F
#define MAGENTA         (RED | BLUE)
#define CYAN            (GREEN | BLUE)
#define YELLOW          (GREEN | RED)

/*******************************************************************************
 * Global variables
 ******************************************************************************/


/*******************************************************************************
 * API
 ******************************************************************************/
#if defined(__cplusplus)
extern "C" {
#endif

#if defined(__cplusplus)
}
#endif

/*! @} */

#endif /*__LCDRGB_DRIVER_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
