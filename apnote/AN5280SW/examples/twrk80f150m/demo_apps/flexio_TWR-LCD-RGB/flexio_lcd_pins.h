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

#ifndef _FLEXIO_LCD_PINS_H
#define _FLEXIO_LCD_PINS_H


/*******************************************************************************
 * Enums
 ******************************************************************************/


/*******************************************************************************
 * Defines
 ******************************************************************************/
#define LCD_FLEXIO_INSTANCE             0       /*!< Instance of FlexIO peripheral used for LCD */
#define LCD_FLEXIO_DATA_PIN_START_INDEX 16      /*!< Lowest FlexIO data pin number for pixel data */
#define LCD_FLEXIO_PCLK_PIN_INDEX       11      /*!< FlexIO data pin number for pixel clock */
#define LCD_FLEXIO_HSYNC_PIN_INDEX      7       /*!< FlexIO data pin number for HYSYNC */
#define LCD_FLEXIO_VSYNC_PIN_INDEX      6       /*!< FlexIO data pin number for VSYNC */
   
/* This example uses FlexIO Shifter Logic Mode to drive the LCD Output Enable
 * pin.  When Shifter logic mode is used, the logic output pins are limited to
 * FXIO_D[4:7, and 12:15].  Also, the shifter used to drive this logic must
 * be the [(FXIO_D pin number) - 4] when using FXIO[4:7], or . 
* [(FXIO_D pin number) - 8] when using FXIO[12:15] */
#define LCD_FLEXIO_OE_PIN_INDEX         15      /*!< FlexIO data pin number for Output Enable */

/* This example uses two signals to derive the Output Enable pin using the
 * shifter Logic mode.  The two signals use FlexIO pins, but because they are
 * not used externally, they can be routed internal to the MCU.  The pin mux for
 * these signals can use a different signal within the MCU on these pins.  These
 * FlexIO signals will be used as logic inputs to the Shifter Logic.  Therefore,
 * they must be within a certain range of the Logic output pin.  That range is
 * FXIO_D[(Logic Output pin number - 4) to (Logic Output pin number - 1)] */
#define LCD_FLEXIO_HORIZ_OE_PIN_INDEX   12      /*!< This pin conflicts with SWD, use for internal logic */
#define LCD_FLEXIO_VERT_OE_PIN_INDEX    14      /*!< This pin conflicts with SWD, use for internal logic */
 
/* This example drives the Output Enable pin with the programmable Logic 
 * feature of the FlexIO shifter.  The shift buffer holds a logic lookup table.
 * This is the value stored in the shift buffer. */
#define LCD_FLEXIO_OE_PIN_LOGIC_TABLE 0xCC00CC00 /*!< This is the logic table value used for the shift buffer */   

/* Need to use DMA channel assigned to FlexIO pixel data shifter that triggers 
 * DMA.  In this example, Shifters 0-3 are used for the data, and shifter 0 is
 * the trigger. */
#define LCD_FLEXIO_DMA_CHANNEL          kEDMAChannel17
#define LCD_FLEXIO_DMA_IRQ              DMA1_DMA17_IRQn

   
/*******************************************************************************
 * Function prototypes
 ******************************************************************************/
void flexio_lcd_pin_mux(void);

/*******************************************************************************
 * Global variables
 ******************************************************************************/


#endif /*_FLEXIO_LCD_PINS_H*/

