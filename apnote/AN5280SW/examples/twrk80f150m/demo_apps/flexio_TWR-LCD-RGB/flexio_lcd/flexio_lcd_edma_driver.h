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

#ifndef __FSL_FLEXIO_LCD_EDMA_DRIVER_H__
#define __FSL_FLEXIO_LCD_EDMA_DRIVER_H__

#include <stdint.h>
#include <stdbool.h>

#include "flexio_lcd_hal.h"
#include "fsl_flexio_driver.h"
#include "fsl_edma_hal.h"
#include "fsl_edma_driver.h"
#include "flexio_lcd_edma_driver.h"

#if FSL_FEATURE_SOC_FLEXIO_COUNT && FSL_FEATURE_SOC_EDMA_COUNT && FSL_FEATURE_FLEXIO_HAS_PARALLEL_WIDTH

/*******************************************************************************
 * Enumeration.
 ******************************************************************************/

/*!
 * @brief Flexio_LCD status return codes.
 */
typedef enum _flexio_lcd_status
{
    kStatus_FlexIO_LCD_Success         = 0U, /*!< Success. */
    kStatus_FlexIO_LCD_InvalidArgument = 1U, /*!< Invalid argument exists. */
    kStatus_FlexIO_LCD_Failed          = 2U  /*!< Execution failed. */
} flexio_lcd_status_t;

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
 * API.
 ******************************************************************************/

/*!
 * @brief Initializes the flexio_lcd_edma device.
 * @param devPtr pointer to Flex_LCD configuration structure
 * @param frame pointer to frame buffer start address
 * @returns status/error code
 *
 */
flexio_lcd_status_t FLEXIO_LCD_DRV_eDma_Init(flexio_lcd_dev_t *devPtr, uint8_t * frame);

#if defined(__cplusplus)
}
#endif

/*! @}*/

#endif /* FSL_FEATURE_SOC_FLEXIO_COUNT && FSL_FEATURE_SOC_EDMA_COUNT*/

#endif /* __FSL_FLEXIO_LCD_EDMA_DRIVER_H__*/

