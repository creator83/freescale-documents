/*
 * Copyright (c) 2013 - 2015, Freescale Semiconductor, Inc.
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

#include "fsl_flexio_driver.h"
#include "flexio_lcd_pins.h"
#include "flexio_lcd.h"
#include "stdio.h"
#include "flexio_lcd_edma_driver.h"

/* FlexIO configuration structures. */
flexio_lcd_dev_t gFlexioLCDDevStruct =
{
    .flexioInstance = LCD_FLEXIO_INSTANCE,
    .flexioBase = 0,
    .datPinStartIdx = LCD_FLEXIO_DATA_PIN_START_INDEX, 
    .pclkPinIdx = LCD_FLEXIO_PCLK_PIN_INDEX,  
    .datPinWidth = LCD_PARALLEL_DATA_WIDTH,
    .hsyncPinIdx = LCD_FLEXIO_HSYNC_PIN_INDEX,     
    .vsyncPinIdx = LCD_FLEXIO_VSYNC_PIN_INDEX,
    .oePinIdx = LCD_FLEXIO_OE_PIN_INDEX,
    .horizOEPinIdx = LCD_FLEXIO_HORIZ_OE_PIN_INDEX,
    .vertOEPinIdx = LCD_FLEXIO_VERT_OE_PIN_INDEX,
    .oeLogicTable = LCD_FLEXIO_OE_PIN_LOGIC_TABLE,
    .pclkFreq = LCD_PIXEL_FREQUENCY,
    .pixelsX = LCD_PIXELS_X,
    .pixelsY = LCD_PIXELS_Y,
    .bytesPerPixel = LCD_BYTES_PER_PIXEL,
    .shifterStartIdx = 0U, /* Shifter 0 = 7 are used. */
    .numDataShifters = 4,
    .timerStartIdx = 0U,
    .hsyncPulseWidth = HSYNC_PULSE_WIDTH,   
    .hsyncFrontPorch = HSYNC_FRONT_PORCH,   
    .hsyncBackPorch = HSYNC_BACK_PORCH,    
    .vsyncPulseWidth = VSYNC_PULSE_WIDTH,
    .vsyncFrontPorch = VSYNC_FRONT_PORCH,   
    .vsyncBackPorch = VSYNC_BACK_PORCH,
    .dmaChannel = LCD_FLEXIO_DMA_CHANNEL,
    .dmaIRQ = LCD_FLEXIO_DMA_IRQ
};

/* module function prototypes. */
static void FlexIO_Init(flexio_lcd_dev_t *devPtr);

#if defined( __ICCARM__ )
    /* Pragma to place the Frame Buffer in SDRAM */
    #pragma language=extended
    #pragma location = "m_sdram_data"
    #pragma data_alignment=32
    __no_init uint8_t u8LCDFrameBuffer[LCD_FRAME_BYTES];
#elif defined (__CC_ARM)
    __attribute__((aligned(32))) __attribute__ ((section ("m_sdram_data"))) uint8_t u8LCDFrameBuffer[LCD_FRAME_BYTES];
#elif defined (__GNUC__)
    __attribute__((aligned(32))) __attribute__ ((section (".m_sdram_data"))) uint8_t u8LCDFrameBuffer[LCD_FRAME_BYTES];
#else
    #error Unsupported compiler, please use IAR, Keil or arm gcc compiler and rebuild the project.
#endif

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_Init
 * Description: Initializes hardware for FlexIO driving LCD
 *
 *END*********************************************************************/
void FLEXIO_LCD_Init(flexio_lcd_dev_t *devPtr, uint8_t * frame)
{
    flexio_lcd_status_t result;
    
    devPtr->flexioBase = g_flexioBase[LCD_FLEXIO_INSTANCE];
    
    /* Initialize the eDMA for moving data. */
    result = FLEXIO_LCD_DRV_eDma_Init(devPtr, frame);
    if(result != kStatus_FlexIO_LCD_Success)
    {
        printf("\r\nFLEXIO_LCD_DRV_InitEdma failed with error %d", result);
        while(1);
    }
      
    /* Initialize the Flexio */
    FlexIO_Init(devPtr);

    /* Initialize FlexIO_LCD pins */
    flexio_lcd_pin_mux();
}

/*******************************************************************************
 * Flexio initialization function.
 ******************************************************************************/
static void FlexIO_Init(flexio_lcd_dev_t *devPtr)
{
  flexio_status_t result;
  
  /* Configure FlexIO Clock Source */
  CLOCK_HAL_SetFlexioSrc(SIM, 0, (clock_flexio_src_t)0);     // Clock source is system clock
  
  /* Configure the flexio as LCD. */
  result = FLEXIO_LCD_HAL_Configure(devPtr);
  if(result != kStatus_FLEXIO_Success)
  {
      printf("\r\nFLEXIO_LCD_HAL_Configure failed with error %d", result);
      while(1);
  }

  /* Configure the flexio common function. */
  FLEXIO_HAL_SetFastAccessCmd(devPtr->flexioBase, true);
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_FrameVerticalStripes
 * Description: Fills the frame buffer with alternating vertical stripes.
 * When the FlexIO uses 4 shift registers, 16Bytes of pixel data are 
 * latched at a time from the shift buffers to the shift registers.  This
 * pattern alternates the 16Bytes (8 pixels) to test the FlexIO timing
 *
 *END*********************************************************************/
void FLEXIO_LCD_FrameVerticalStripes(uint8_t * frame)
{
    uint32_t i, j, k;
    uint16_t * pixel;
    
    pixel = (uint16_t *) frame;
    
    for(k=0; k < LCD_PIXELS_Y; k++)
    {
        /* middle loop fills horizontal row */
        for(i=0; i < LCD_PIXELS_X / 16; i++)
        {
            /* inner loop does group of 16 pixels */
            for(j=0; j < 8; j++)
            {
                *pixel = BLUE;
                pixel++;
            }
            for(j=0; j < 8; j++)
            {
                *pixel = YELLOW;
                pixel++;
            }
        }
    }
}

/*FUNCTION****************************************************************
 *
* Function Name: FLEXIO_LCD_FrameBlackWhiteColumns
 * Description: Writes alternating columns of black and white pixels.  This
 * pattern is good for stress-testing the external memory interface, as the 
 * data bus bits will toggle from all 1s to all 0s with each DRAM read
 *
 *END*********************************************************************/
void FLEXIO_LCD_FrameBlackWhiteColumns(uint8_t * frame)
{
    uint32_t width, i, j;
    uint16_t * pixel;
    
    pixel = (uint16_t *) frame;
    width = LCD_PIXELS_X / 2;   
    
    /* outer loop fills frame with horizontal lines */
    for(i = 0; i < LCD_PIXELS_Y; i++)
    {
        /* inner loops for each pair of pixels */
        for(j=0; j < width; j++)
        {
            *pixel = WHITE;
            pixel++;
            *pixel = BLACK;
            pixel++;
        }
    }
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_FrameColorBars
 * Description: Draws color bars test pattern in frame
 *
 *END*********************************************************************/
void FLEXIO_LCD_FrameColorBars(uint8_t * frame)
{
    uint32_t width, last_width, i, j, short_height, tall_height;
    uint16_t * pixel;
    
    pixel = (uint16_t *) frame;
    width = LCD_PIXELS_X / 7;   
    last_width = LCD_PIXELS_X - width * 6;      // last column gets remainder
    short_height = LCD_PIXELS_Y / 10;
    tall_height = LCD_PIXELS_Y - short_height;
    
    /* outer loop fills tall_height with horizontal lines */
    for(i = 0; i < tall_height; i++)
    {
        /* inner loops for each horizontal color */
        for(j=0; j < width; j++)
        {
            *pixel = WHITE;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = YELLOW;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = CYAN;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = GREEN;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = MAGENTA;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = RED;
            pixel++;
        }
        for(j=0; j < last_width; j++)
        {
            *pixel = BLUE;
            pixel++;
        }
    }

    /* outer loop fills short_height with horizontal lines */
    for(i = 0; i < short_height; i++)
    {
        /* inner loops for each horizontal color */
        for(j=0; j < width; j++)
        {
            *pixel = BLUE;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = BLACK;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = MAGENTA;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = BLACK;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = CYAN;
            pixel++;
        }
        for(j=0; j < width; j++)
        {
            *pixel = BLACK;
            pixel++;
        }
        for(j=0; j < last_width; j++)
        {
            *pixel = WHITE;
            pixel++;
        }
    }
}

/*******************************************************************************/

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_Start
 * Description: Starts DMA moving data from frame buffer, and starts FlexIO
 * timers.
 *
 *END*********************************************************************/
void FLEXIO_LCD_Start(flexio_lcd_dev_t *devPtr, uint8_t * frame)
{
    uint32_t i, colorData;
    
    /* Enable FlexIO DMA Request */
    FLEXIO_HAL_SetShifterStatusDmaCmd(devPtr->flexioBase, (1 << devPtr->shifterStartIdx), true);
    
    #if SETUP_FLEXIO_INTERRUPT
      /* Enable FlexIO Interrupt */
      INT_SYS_EnableIRQ(g_flexioIrqId[devPtr->flexioInstance]);
      FLEXIO_HAL_SetShifterStatusIntCmd(devPtr->flexioBase, (1 << devPtr->shifterStartIdx), true);
    #endif  // SETUP_FLEXIO_INTERRUPT
      
      
    /* Enable FlexIO Peripheral */
    FLEXIO_HAL_SetFlexioEnableCmd(devPtr->flexioBase, true);
    
}

/* EOF flexio_lcd.c */

