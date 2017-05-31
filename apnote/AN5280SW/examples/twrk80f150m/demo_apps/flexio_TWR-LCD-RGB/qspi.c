/*
 * Copyright (c) 2016, NXP Semiconductors, Inc.
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
 * o Neither the name of NXP Semiconductors, Inc. nor the names of its
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
#include <stdio.h>
#include "fsl_qspi_driver.h"
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_clock_manager.h"
     
 ////////////////////////////////////////////////////////////////////////////////
 // Definitions
 ////////////////////////////////////////////////////////////////////////////////
#define FLASH_PAGE_SIZE  (256)
#define FLASH_SECTORE_SIZE (4096)
#define FLASH_SIZE (0x00400000U)
#define DUMMY_MASTER (0xE)
#define QUADSPI0 0      // Instqance for QuadSPI peripheral

 ////////////////////////////////////////////////////////////////////////////////
 // Globals
 ////////////////////////////////////////////////////////////////////////////////
qspi_state_t qspiState;

 //Serial Flash dummy command
 void send_dummy()
 {
     while(QSPI_DRV_GetQspiStatus(QUADSPI0, kQspiBusy));
     QSPI_DRV_ExecuteFlashCommand(QUADSPI0,32);
 }
 
 //Write enable command
 void cmd_write_enable()
 {
     send_dummy();
     while(QSPI_DRV_GetQspiStatus(QUADSPI0, kQspiBusy));
     QSPI_DRV_ExecuteFlashCommand(QUADSPI0,4);
 }
 
 //Check if serial flash erase or program finished.
 void check_if_finished()
 {
     uint32_t val = 0;
     //Check WIP bit
     do
     {
         while(QSPI_DRV_GetQspiStatus(QUADSPI0, kQspiBusy));
         QSPI_DRV_ClearFifo(QUADSPI0, kQspiRxFifo);
         QSPI_DRV_ExecuteFlashCommand(QUADSPI0,12);
         while(QSPI_DRV_GetQspiStatus(QUADSPI0, kQspiBusy));
         val = *(volatile uint32_t *)(FSL_FEATURE_QSPI_ARDB_BASE);
         //Clear ARDB area
         QSPI_DRV_ClearFlag(QUADSPI0, kQspiRxBufferDrain);
     }while(val & 0x1);
 }
 
 //Enable Quad mode
 void enable_quad_mode()
 {
     while(QSPI_DRV_GetQspiStatus(QUADSPI0, kQspiBusy));
     QSPI_DRV_SetIPCommandAddr(QUADSPI0, FSL_FEATURE_QSPI_AMBA_BASE);
     
     //Clear Tx FIFO
     QSPI_DRV_ClearFifo(QUADSPI0, kQspiTxFifo);
     
     //Should write at least 16 bytes to TX FIFO
     uint32_t val[4] = {0x40,0x0,0x0,0x0};
     
     //Write enable
     cmd_write_enable();
     
     //Write data into TX FIFO
     QSPI_DRV_WriteDataBlocking(QUADSPI0, val, 16);
     
     //Set seq ID, write register
     QSPI_DRV_ExecuteFlashCommand(QUADSPI0,20);
     
     //Wait until finished
     check_if_finished();
 }
 
/*FUNCTION****************************************************************
 *
 * Function Name: configure_qspi
 * Description: Configures the QSPI, where images are stored
 * @returns void
 *
 *END*********************************************************************/
void configure_qspi(void)
{
    uint32_t i = 0;
    
     qspi_flash_config_t single_config = 
     {
         .flashA1Size = FLASH_SIZE, /* 4MB */
         .lookuptable = 
          {
             // Seq0 :Quad Read
             // CMD:        0xEB - Quad Read, Single pad
             // ADDR:       0x18 - 24bit address, Quad pads
             // DUMMY:      0x06 - 6 clock cyles, Quad pads
             // READ:       0x80 - Read 128 bytes, Quad pads
             // JUMP_ON_CS: 0
             [0] = 0x0A1804EB,
             [1] = 0x1E800E06,
             [2] = 0x2400,
     
             // Seq1: Write Enable
             // CMD:      0x06 - Write Enable, Single pad
             [4] = 0x406,
     
             // Seq2: Erase All
             // CMD:    0x60 - Erase All chip, Single pad
             [8] = 0x460,
     
             // Seq3: Read Status
             // CMD:    0x05 - Read Status, single pad
             // READ:   0x01 - Read 1 byte
             [12] = 0x1c010405,
     
             // Seq4: Page Program
             // CMD:    0x02 - Page Program, Single pad
             // ADDR:   0x18 - 24bit address, Single pad
             // WRITE:  0x80 - Write 128 bytes at one pass, Single pad
             [16] = 0x08180402,
             [17] = 0x2080,
     
             // Seq5: Write Register
             // CMD:    0x01 - Write Status Register, single pad
             // WRITE:  0x01 - Write 1 byte of data, single pad
             [20] = 0x20010401,
     
             // Seq6: Read Config Register
             // CMD:  0x05 - Read Config register, single pad
             // READ: 0x01 - Read 1 byte
             [24] = 0x1c010405,
     
             // Seq7: Erase Sector
             // CMD:  0x20 - Sector Erase, single pad
             // ADDR: 0x18 - 24 bit address, single pad
             [28] = 0x08180420,
             
             // Seq8: Dummy
             // CMD:    0xFF - Dummy command, used to force SPI flash to exit continuous read mode
             [32] = 0x4FF,
     
             // Seq9: Fast Single read
             // CMD:        0x0B - Fast Read, Single Pad
             // ADDR:       0x18 - 24bit address, Single Pad
             // DUMMY:      0x08 - 8 clock cyles, Single Pad
             // READ:       0x80 - Read 128 bytes, Single Pad
             // JUMP_ON_CS: 0
             [36] = 0x0818040B,
             [37] = 0x1C800C08,
             [38] = 0x2400,
     
             // Seq10: Fast Dual read
             // CMD:        0x3B - Dual Read, Single Pad
             // ADDR:       0x18 - 24bit address, Single Pad
             // DUMMY:      0x08 - 8 clock cyles, Single Pad
             // READ:       0x80 - Read 128 bytes, Dual pads
             // JUMP_ON_CS: 0
             [40] = 0x0818043B,
             [41] = 0x1D800C08,
             [42] = 0x2400,
          },
          .endian = kQspi64LittleEndian,
     };
     
    //Init EDMA module
    edma_state_t         edmaState;
    edma_user_config_t   edmaUserConfig;
    
    edmaUserConfig.chnArbitration = kEDMAChnArbitrationRoundrobin;
    edmaUserConfig.notHaltOnError = false;
    
    EDMA_DRV_Init(&edmaState, &edmaUserConfig);
    QSPI_DRV_Init(QUADSPI0, &qspiState);
    
    //Get QSPI default settings and configure the qspi
    qspi_config_t config;
    QSPI_DRV_GetDefaultQspiConfig(&config);
    
    //Set dma source
    config.txSource = kDmaRequestMux0Group1QSPI0Tx;
    config.rxSource = kDmaRequestMux0Group1QSPI0Rx;
    
    //Set AHB buffer size for reading data through AHB bus
    config.AHBbufferSize[3] = FLASH_PAGE_SIZE;
    QSPI_DRV_ConfigQspi(QUADSPI0, &config);
    
    //Update the serial flash driver to configure flash settings
    QSPI_DRV_ConfigFlash(QUADSPI0, &single_config);

    enable_quad_mode();
}
