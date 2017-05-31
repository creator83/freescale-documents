/*
 * Copyright (c) 2013 - 2014, Freescale Semiconductor, Inc.
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

///////////////////////////////////////////////////////////////////////////////
//  Includes
///////////////////////////////////////////////////////////////////////////////
#include "flexio_lcd.h"

// SDK Included Files
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_sdram_driver.h"
#include "flexio_lcd_pins.h"
#include "fsl_lmem_cache_driver.h"
#include "fsl_pit_driver.h"
#include "qspi.h"
#include "image_files.h"
#include <string.h>

////////////////////////////////////////////////////////////////////////////////
// Definitions
////////////////////////////////////////////////////////////////////////////////
#define DEMO_PIT_INSTANCE       0
#define SLIDESHOW_PERIOD        3000000 //3s, in microseconds

////////////////////////////////////////////////////////////////////////////////
// Globals
////////////////////////////////////////////////////////////////////////////////
DrawFunc PatternFunctionTable[numPatterns]; 
bool SW3ButtonPress = false, SW2ButtonPress = false, QSPIprogrammed = false;
bool DemoMode = true;
uint32_t image;


////////////////////////////////////////////////////////////////////////////////
// Code
////////////////////////////////////////////////////////////////////////////////
void CopyImage(uint32_t * image, uint8_t * frame);
void DrawNextPattern(uint32_t * pattern, uint8_t * frame);
void configure_gpio(void);

/* Table of images stored in QuadSPI */
typedef const unsigned short * ImageAddress;
#if defined( __ICCARM__ )
    /* Pragma to place the image in QSPI */
    #pragma language=extended
    #pragma location = "m_qspi_data"
    #pragma data_alignment=32
#elif defined (__CC_ARM)
    __attribute__((aligned(32))) __attribute__ ((section ("m_qspi_data")))
#elif defined (__GNUC__)
    __attribute__((aligned(32))) __attribute__ ((section (".m_qspi_data")))
#else
    #error Unsupported compiler, please use IAR, Keil or arm gcc compiler and rebuild the project.
#endif

const ImageAddress ImageTable[NUM_IMAGES] = 
{
    NXP_Logo,   
    Solutions,   
}; 

      
/*!
 * @brief Main function
 */
int main (void)
{
    uint32_t    pattern;
    const unsigned short * image_address;
    
    // Initialize standard SDK demo application pins
    hardware_init();

    // Initialize OSA layer.
    OSA_Init();
    
    // Initialize QSPI
    configure_qspi();
    
    // Initialize SDRAM
    SDRAM_Init();
    
    /* Enable LMEM System and Code cache for improved performance */
    LMEM_DRV_CodeCacheEnable(0);
    LMEM_DRV_SystemCacheEnable(0);
    
    /* To maximize SDRAM/DMA throughput, configure the AXBS crossbar.  The
     * FlexIO is on the Peripheral Bridge 1.  Park the crossbar slave port for
     * this bridge and the SDRAM on the DMA master port to minimize latency.  
     * In the K8x, Peripheral Bridge 1 is slave port 3, SDRAM is slave port 4, 
     * and the DMA is master port 2 */
    AXBS_CRS3 = AXBS_CRS_PARK(2); 
    AXBS_CRS4 = AXBS_CRS_PARK(2); 

    configure_gpio();
    
    // Print the initial banner
    PRINTF("\r\nFlexIO Example driving TWR-LCD-RGB\r\n\r\n");

    /* Setup Function table for available patterns */
    PatternFunctionTable[kVerticalStripes]      = &FLEXIO_LCD_FrameVerticalStripes;
    PatternFunctionTable[kBlackWhite]           = &FLEXIO_LCD_FrameBlackWhiteColumns;
    PatternFunctionTable[kColorBar]             = &FLEXIO_LCD_FrameColorBars;
    
    /* Check if QSPI was programmed with images */
    image_address = ImageTable[0];
    if((image_address >= (unsigned short *)0x68000000) \
        && (image_address <= (unsigned short *)0x69000000))
        /* QSPI is programmed with good address in table */
        QSPIprogrammed = true;
    else
    {
        QSPIprogrammed = false;
        DemoMode = false;
    }
          
    /* Load frame buffer, use image if QSPI is programmed, else use pattern */
    pattern = numPatterns;
    if(QSPIprogrammed)
    {
        image = NUM_IMAGES;
        CopyImage(&image, u8LCDFrameBuffer);
    } else
    {
        DrawNextPattern(&pattern, u8LCDFrameBuffer);
    }
    
    FLEXIO_LCD_Init(&gFlexioLCDDevStruct, u8LCDFrameBuffer);
    
    FLEXIO_LCD_Start(&gFlexioLCDDevStruct, u8LCDFrameBuffer);
    
    if(DemoMode)
    {
        /* Setup PIT timer for slide show to cycle through images */
      
        // Structure of initialize PIT channel No.0
        pit_user_config_t chn0Confg = {
            .isInterruptEnabled = true,
            .periodUs = SLIDESHOW_PERIOD,
        };

        // Init pit module and enable run in debug
        PIT_DRV_Init(DEMO_PIT_INSTANCE, false);

        // Initialize PIT timer instance for channel 0
        PIT_DRV_InitChannel(DEMO_PIT_INSTANCE, 0, &chn0Confg);

        // Start channel 0
        PIT_DRV_StartTimer(DEMO_PIT_INSTANCE, 0);
    }
    
    while(1)
    {
        /* Check for button press, and update LCD */
        if(SW3ButtonPress)
        {
            DrawNextPattern(&pattern, u8LCDFrameBuffer);
            SW3ButtonPress = false;
        }
        if(SW2ButtonPress)
        {
            if(QSPIprogrammed)
                CopyImage(&image, u8LCDFrameBuffer);
            SW2ButtonPress = false;
        }
    }
}

/*FUNCTION****************************************************************
 *
 * Function Name: DrawNextPattern
 * Description: Calls function to update frame buffer with next pattern
 * @param pattern - number of current pattern in frame buffer
 * @param frame - address of start of frame buffer
 * @returns void
 *
 *END*********************************************************************/
void DrawNextPattern(uint32_t * pattern, uint8_t * frame)
{
    (*pattern) += 1;
    
    /* restart to beginning of pattern list if needed */
    if(*pattern >= numPatterns)
        *pattern = 0;
    
    /* Call next pattern function */
    PatternFunctionTable[*pattern](frame);
}

/*FUNCTION****************************************************************
 *
 * Function Name: CopyImage
 * Description: Copies image to frame buffer
 * @param image - number of current image 
 * @param frame - address of start of frame buffer
 * @returns void
 *
 *END*********************************************************************/
void CopyImage(uint32_t * image, uint8_t * frame)
{
    (*image) += 1;
    
    /* restart to beginning of pattern list if needed */
    if(*image >= NUM_IMAGES)
        *image = 0;
    
    /* Copy image */
    //TODO: Copy image using DMA
    memcpy(frame, ImageTable[*image], LCD_FRAME_BYTES);
}

/*FUNCTION****************************************************************
 *
 * Function Name: configure_gpio
 * Description: Configures GPIO inputs for push buttons
 * @returns void
 *
 *END*********************************************************************/
void configure_gpio(void)
{
    /* Configure button input pins */
    gpio_input_pin_user_config_t buttonPins[] = {
      {
        .pinName = kGpioSW3,
        .config.isPullEnable = true,
        .config.pullSelect = kPortPullUp,
        .config.isPassiveFilterEnabled = true,
        .config.isDigitalFilterEnabled = true,
        .config.interrupt = kPortIntFallingEdge
      },
      {
        .pinName = kGpioSW2,
        .config.isPullEnable = true,
        .config.pullSelect = kPortPullUp,
        .config.isPassiveFilterEnabled = true,
        .config.isDigitalFilterEnabled = true,
        .config.interrupt = kPortIntFallingEdge
      },
      {
        .pinName = GPIO_PINS_OUT_OF_RANGE,
      }
    };
    
    GPIO_DRV_Init(buttonPins, NULL);
    
    // Check if SW3 is held low for Demo Mode
    if(GPIO_DRV_ReadPinInput(kGpioSW3) == 0)
        DemoMode = false;
}

/* PIT ISR used for Slide Show in Demo Mode */
void PIT0_IRQHandler(void)
{
    /* Clear interrupt flag.*/
    PIT_HAL_ClearIntFlag(g_pitBase[0], 0U);
    
    if(DemoMode)
    {
        CopyImage(&image, u8LCDFrameBuffer);
    }
}
