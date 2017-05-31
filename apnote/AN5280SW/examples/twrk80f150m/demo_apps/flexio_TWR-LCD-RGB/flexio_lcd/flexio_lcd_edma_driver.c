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


#include <string.h>
#include "flexio_lcd_edma_driver.h"
#include "fsl_clock_manager.h"
#include "fsl_edma_request.h"
#include "fsl_interrupt_manager.h"

#if FSL_FEATURE_SOC_FLEXIO_COUNT &&  FSL_FEATURE_SOC_EDMA_COUNT

#define FLEXIO_LCD_DMA_IRQ_PRIORITY 0   // NVIC priority for DMA interrupt

/*FUNCTION*********************************************************************
 *
 * Function Name : FLEXIO_LCD_DRV_eDma_Init
 * Description   : Initializes the eDMA to copy pixel data from the frame
 * buffer to the FlexIO shift buffers.
 *
 *END*************************************************************************/
flexio_lcd_status_t FLEXIO_LCD_DRV_eDma_Init(flexio_lcd_dev_t *devPtr, uint8_t * frame)
{
    edma_transfer_config_t edma_transfer_config;
    edma_channel_indicator_t channel;
    uint32_t bytesPerDMATransfer, numFrameBytes, DMAMajorLoopCount;
    IRQn_Type irq;
    
    if ( (!devPtr) || (!frame))
    {
        return kStatus_FlexIO_LCD_InvalidArgument;
    }

    channel = devPtr->dmaChannel;
    irq = devPtr->dmaIRQ;
    numFrameBytes = devPtr->pixelsX * devPtr->pixelsY * devPtr->bytesPerPixel;

    /* Calculate bytes to transfer in each DMA minor loop */
    bytesPerDMATransfer = devPtr->numDataShifters * 4;
    
    /* Calculate DMA major loop count.  This is the number of minor loops
     * need to complete transfer of entire frame buffer */
    DMAMajorLoopCount = numFrameBytes/bytesPerDMATransfer;
    
    /* Check that frame buffer size is evenly divisble by DMA minor loop 
     * transfer size */
    if(numFrameBytes - DMAMajorLoopCount * bytesPerDMATransfer != 0)
    {
        return kStatus_FlexIO_LCD_InvalidArgument;
    }

    /* Check that major loop count value can fit in DMA TCD CITER field, 
     * which is 15-bit field size */
    if(DMAMajorLoopCount >= DMA_CITER_ELINKNO_CITER_MASK)
    {
        return kStatus_FlexIO_LCD_InvalidArgument;
    }
      
    /* Initialize the DMA HAL */
    DMAMUX_HAL_Init(DMAMUX);
    EDMA_HAL_Init(DMA0);
    
    /* Setup DMA Transfer Configuration 
     * Source:
     *   Address: frame buffer
     *   Transfer Size: 16Bytes (8 pixels) to maximize data throughput
     *   Offset: 16Bytes - moves to next 16Bytes in frame buffer with each 
     *     minor loop
     *   Last Address Adjustment: Adjust back to start of frame buffer
     *   Modulo: Not Used
     * Destination:
     *   Address: FlexIO Shift buffer, first in Data Shifters chain
     *   Transfer Size: 16Bytes (4 FlexIO shifters) to maximize data throughput
     *   Offset: 0 - resets to first FlexIO shift buffer with each minor loop
     *   Last Address Adjustment: 0 - resets to first FlexIO shift buffer with 
     *     each major loop
     *   Modulo: Not Used
     * Minor Loop Count: 16Bytes, occurs with every FlexIO shifter load event
     * Major Loop Count: number of minor loops required to complete frame
    */
    edma_transfer_config.srcAddr             = (uint32_t)frame;
    edma_transfer_config.destAddr            = \
      FLEXIO_LCD_HAL_GetTxBufferAddr(devPtr, kFlexioLCDShifterData0);
    edma_transfer_config.srcTransferSize     = kEDMATransferSize_16Bytes;       
    edma_transfer_config.destTransferSize    = kEDMATransferSize_16Bytes;
    edma_transfer_config.srcOffset           = bytesPerDMATransfer;
    edma_transfer_config.destOffset          = 0;
    edma_transfer_config.srcLastAddrAdjust   = -(numFrameBytes);   
    edma_transfer_config.destLastAddrAdjust  = 0;
    edma_transfer_config.srcModulo           = kEDMAModuloDisable;
    edma_transfer_config.destModulo          = kEDMAModuloDisable;
    edma_transfer_config.minorLoopCount      = bytesPerDMATransfer;
    edma_transfer_config.majorLoopCount      = DMAMajorLoopCount;   

    /* DMA MUX initialization. */
    DMAMUX_HAL_SetChannelCmd(DMAMUX, channel, false);
    DMAMUX_HAL_SetTriggerSource(DMAMUX, channel, devPtr->shifterStartIdx + 1);

    /* Disable DMA interrupt */
    EDMA_HAL_HTCDSetHalfCompleteIntCmd(DMA0, channel, false);
    EDMA_HAL_HTCDSetIntCmd(DMA0, channel, false);        
      
    /* eDMA arbitration. */
    EDMA_HAL_SetChannelArbitrationMode(DMA0, kEDMAChnArbitrationRoundrobin);
    EDMA_HAL_SetGroupPriority(DMA0, kEDMAGroup0PriorityLowGroup1PriorityHigh);
    EDMA_HAL_SetGroupArbitrationMode(DMA0, kEDMAGroupArbitrationRoundrobin);
    
    /* eDMA Hardware TCD Configuration */
    EDMA_HAL_HTCDSetSrcAddr(DMA0, channel, edma_transfer_config.srcAddr);
    EDMA_HAL_HTCDSetSrcOffset(DMA0, channel, edma_transfer_config.srcOffset);
    EDMA_HAL_HTCDSetSrcLastAdjust(DMA0, channel, edma_transfer_config.srcLastAddrAdjust);
    
    EDMA_HAL_HTCDSetDestAddr(DMA0, channel, edma_transfer_config.destAddr);
    EDMA_HAL_HTCDSetDestOffset(DMA0, channel, edma_transfer_config.destOffset);
    EDMA_HAL_HTCDSetDestLastAdjust(DMA0, channel, edma_transfer_config.destLastAddrAdjust);
    
    EDMA_HAL_HTCDSetNbytes(DMA0, channel, edma_transfer_config.minorLoopCount);
    EDMA_HAL_HTCDSetMajorCount(DMA0, channel, edma_transfer_config.majorLoopCount );
    EDMA_HAL_HTCDSetAttribute(DMA0, channel, edma_transfer_config.srcModulo, 
                                                   edma_transfer_config.destModulo,
                                                   edma_transfer_config.srcTransferSize,
                                                   edma_transfer_config.destTransferSize);
    
    EDMA_HAL_HTCDSetDisableDmaRequestAfterTCDDoneCmd(DMA0, channel, false);
    
    /* Clear all the flags. */
    EDMA_HAL_ClearDoneStatusFlag(DMA0, channel);
    
    EDMA_HAL_SetAsyncRequestInStopModeCmd(DMA0, channel, true); /* The DMA can work in CPU's stop mode. */
    
    EDMA_HAL_SetDmaRequestCmd(DMA0, channel, true);
    DMAMUX_HAL_SetChannelCmd(DMAMUX, channel, true);

    return kStatus_FlexIO_LCD_Success;
}

#endif /* FSL_FEATURE_SOC_FLEXIO_COUNT && FSL_FEATURE_SOC_DMA_COUNT */

/* EOF. */

