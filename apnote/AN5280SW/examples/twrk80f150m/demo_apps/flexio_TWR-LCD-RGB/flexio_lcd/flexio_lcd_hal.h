/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 * of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 * list of conditions and the following disclaimer in the documentation and/or
 * other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from this
 * software without specific prior written permission.
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

#ifndef __FSL_FLEXIO_LCD_HAL_H__
#define __FSL_FLEXIO_LCD_HAL_H__

#include "fsl_flexio_hal.h"
#include "fsl_edma_hal.h"

#if FSL_FEATURE_SOC_FLEXIO_COUNT

#if FSL_FEATURE_FLEXIO_HAS_PARALLEL_WIDTH
/* The flexio_lcd's function are all built on the parallel mode. */

/*! @brief FlexIO Timers used by flexio_lcd */
typedef enum _flexio_lcd_timers
{
    kFlexioLCDTimerPCLK,                /*!< Pixel Clock Timer */
    kFlexioLCDTimerHPeriod,             /*!< Hovizontal line period timer */
    kFlexioLCDTimerHOETimer,            /*!< Horizontal line Output enable Timer */
    kFlexioLCDTimerHOEPin,              /*!< Horizontal line Output Enable Pin Timer */
    kFlexioLCDTimerVPeriod,             /*!< Vertical frame period timer */
    kFlexioLCDTimerVOETimer,            /*!< Vertical frame Output enable Timer */
    kFlexioLCDTimerVOEPin,              /*!< Vertical frame Output Enable Pin Timer */
    kFlexioLCDTimerData,                /*!< Data Timer for shifting pixel data */
    kFlexioLCDNumOfTimers               /*!< Number of FlexIO timers used by flexio_lcd */
} flexio_lcd_timers_t;

/*! @brief FlexIO Shifters used by flexio_lcd */
typedef enum _flexio_lcd_shifters
{
    kFlexioLCDShifterData0,             /*!< Shifters for Pixel Data */
    kFlexioLCDShifterData1,             /*!< Shifters for Pixel Data */
    kFlexioLCDShifterData2,             /*!< Shifters for Pixel Data */
    kFlexioLCDShifterData3,             /*!< Shifters for Pixel Data */
    kFlexioLCDShifterHSYNC,             /*!< HSYNC Pin Shifter */
    kFlexioLCDShifterVSYNC,             /*!< VSYNC Pin Shifter */
    KFlexioLCDShifterUnused0,           /*!< Shifter not used by driver */
    kFlexioLCDShifterOEPin,             /*!< Output Enable Pin shifter, shifter 
                                          number must correspond with OE pin number */
    kFlexioLCDNumOfShifters             /*!< Number of FlexIO shifters used by flexio_lcd */
} flexio_lcd_shifters_t;

/*!
 * @brief Define structure of configuring the FlexIO LCD device. 
 */
typedef struct
{
    uint32_t flexioInstance;    /*!< Instance of FlexIO peripheral */
    FLEXIO_Type * flexioBase;   /*!< FlexIO module base address. */
    uint32_t datPinStartIdx;    /*!< Lowest data pin index for flexio_lcd. */
    uint32_t datPinWidth;       /*!< Data bus width for flexio_lcd.  Data bus will use FlexIO
                                     FlexIO pins from datPinStartIdx to 
                                     (datPinStartIdx + datPinWidth -1) */
    uint32_t pclkPinIdx;        /*!< Pixel clock pin (PCLK) index for flexio_lcd. */
    uint32_t hsyncPinIdx;       /*!< Horizontal sync pin (HSYNC) index for flexio_lcd. */
    uint32_t vsyncPinIdx;       /*!< Vertical sync pin (VSYNC) index for flexio_lcd */
    uint32_t oePinIdx;          /*!< Output Enable pin (OE) index for flexio_lcd */
    uint32_t horizOEPinIdx;     /*!< Internal pin used for horizontal Output Enable timing */
    uint32_t vertOEPinIdx;      /*!< Internal pin used for vertical Output Enable timing */
    uint32_t oeLogicTable;      /*!< Shift buffer value for OE logic table */
    
    uint32_t pclkFreq;          /*!< Pixel Clock Frequency, in Hz */
    uint16_t pixelsX;           /*!< Pixels in X dimension */
    uint16_t pixelsY;           /*!< Pixels in Y dimension */
    uint32_t bytesPerPixel;      /*!< Bytes per pixel */

    uint32_t shifterStartIdx;   /*!< First shifter index used for flexio_lcd data FIFO. */
    uint32_t numDataShifters;   /*!< Number of Shifters for pixel data chained 
                                  together.  Starts with Shifter0 */
    uint32_t timerStartIdx;     /*!< Lowest Timer index used for flexio_lcd in FlexIO. */
    
    uint8_t  hsyncPulseWidth;   /*!< in PCLK periods */
    uint8_t  hsyncFrontPorch;   /*!< in clock periods before HSYNC pulse */
    uint32_t hsyncBackPorch;    /*!< in clock periods after HYSNC pulse */
    uint32_t vsyncPulseWidth;   /*!< in horz. lines */
    uint32_t vsyncFrontPorch;   /*!< in horz. lines before VSYNC pulse */
    uint32_t vsyncBackPorch;    /*!< in horz. lines after VSYNC pulse */
    
    edma_channel_indicator_t dmaChannel;        /*!< DMA channel used with FlexIO */
    IRQn_Type dmaIRQ;           /*!< DMA IRQ for selected channel */
} flexio_lcd_dev_t;

#if defined(__cplusplus)
extern "C" {
#endif

/*!
 * @brief Configures the FlexIO as a flexio_lcd device.
 *
 * @param devPtr Pointer to the device.
 * @param configPtr Pointer to configuration structure.
 * @return Execution status.
 */
flexio_status_t FLEXIO_LCD_HAL_Configure(flexio_lcd_dev_t *devPtr);


/*!
 * @brief Gets the receive buffer's address for the DMA use.
 *
 * @param devPtr Pointer to the device.
 * @param shifter Index of base shifter for LCD data
 * @return receive buffer's address.
 */
uint32_t FLEXIO_LCD_HAL_GetTxBufferAddr(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter);

/*!
 * @brief Returns FlexIO timer index from offset
 *
 * @param devPtr Pointer to the device.
 * @param timer_offset offset from start timer index
 * @return FlexIO timer index
 */
uint32_t FLEXIO_LCD_HAL_GetFlexioTimer(flexio_lcd_dev_t *devPtr, flexio_lcd_timers_t timer_offset);

/*!
 * @brief Calculates FlexIO timer compare value for Horizontal Period Timer
 *
 * @param devPtr Pointer to the device.
 * @param timcmp Pointer to timer compare element
 * @return FlexIO status return code
 */
flexio_status_t FLEXIO_LCD_HAL_GetHPeriodTimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp);

/*!
 * @brief Calculates FlexIO timer compare value for Horizontal Output Enable Timer
 *
 * @param devPtr Pointer to the device.
 * @param timcmp Pointer to timer compare element
 * @return FlexIO status return code
 */
flexio_status_t FLEXIO_LCD_HAL_GetHOETimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp);

/*!
 * @brief Returns FlexIO shifter index from offset
 *
 * @param devPtr Pointer to the device.
 * @param shifter_offset offset from start shifter index
 * @return FlexIO shifter index
 */
uint32_t FLEXIO_LCD_HAL_GetFlexioShifter(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset);

/*!
 * @brief Writes FlexIO Shift Buffer with bit pattern for HSYNC pulse
 *
 * @param devPtr Pointer to the device.
 * @param shifter_offset offset from start shifter index
 * @return none
 */
void FLEXIO_LCD_HAL_SetHSYNCPinShiftBuffer(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset);

/*!
 * @brief Calculates FlexIO timer compare value for Vertical Period Timer
 *
 * @param devPtr Pointer to the device.
 * @param timcmp Pointer to timer compare element
 * @return FlexIO status return code
 */
flexio_status_t FLEXIO_LCD_HAL_GetVPeriodTimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp);

/*!
 * @brief Calculates FlexIO timer compare value for Vertical Output Enable Timer
 *
 * @param devPtr Pointer to the device.
 * @param timcmp Pointer to timer compare element
 * @return FlexIO status return code
 */
flexio_status_t FLEXIO_LCD_HAL_GetVOETimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp);

/*!
 * @brief Writes FlexIO Shift Buffer with bit pattern for VSYNC pulse
 *
 * @param devPtr Pointer to the device.
 * @param shifter_offset offset from start shifter index
 * @return none
 */
void FLEXIO_LCD_HAL_SetVSYNCPinShiftBuffer(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset);

/*!
 * @brief Masks unused logic inputs for shifter in Logic mode
 *
 * @param devPtr Pointer to the device.
 * @param sstop pointer to shifter configuration sstop element
 * @param sstart pointer to shifter configuration sstart element
 * @return none
 */
void FLEXIO_LCD_HAL_SetShifterLogicInputMask(flexio_lcd_dev_t *devPtr, \
  flexio_shifter_stop_bit_t * sstop, flexio_shifter_start_bit_t * sstart);

/*!
 * @brief Gets FlexIO timer compare value for the data timer for pixel data
 *
 * @param devPtr Pointer to the device.
 * @return timer compare value in 8-bit dual counter mode
 */
uint32_t FLEXIO_LCD_HAL_GetDataTimerCompare(flexio_lcd_dev_t *devPtr);

#if defined(__cplusplus)
}
#endif

/*! @} */

#endif /* FSL_FEATURE_FLEXIO_HAS_PARALLEL_WIDTH */

#endif /* FSL_FEATURE_SOC_FLEXIO_COUNT */
#endif /* __FSL_FLEXIO_LCD_HAL_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/

