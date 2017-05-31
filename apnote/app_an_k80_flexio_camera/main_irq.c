/*
 * Copyright (c) 2013 -2014, Freescale Semiconductor, Inc.
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
 /**************************************************************************//*!
 * @file      main_irq.c
 * @author    
 * @version   0.0.1.0
 * @brief     
 ******************************************************************************/

// Standard C Included Files
#include <stdint.h>
#include <stdbool.h>
// SDK Included Files
#include "fsl_edma_driver.h"
#include "fsl_i2c_shared_function.h"
#include "fsl_flexio_driver.h"
#include "fsl_device_registers.h"
#include "main.h"
#include "fsl_interrupt_manager.h"
#include "SSD1289.h"

/* module definitions and enums                                               */

/* module function prototypes                                                 */
void (* volatile g_PortACallback)(uint32_t pin);


/* module variables                                                           */

/* module Function definitions                                                */
void PORTA_InstallCallback(uint8_t priority, void (*callbackFunc)(uint32_t pin))
{
  NVIC_ClearPendingIRQ(PORTA_IRQn);
  NVIC_SetPriority(PORTA_IRQn, priority);
  INT_SYS_EnableIRQ(PORTA_IRQn);
  g_PortACallback = callbackFunc;
}

/* module IRQ Handlers                                                        */
/***************************************************************************//*!
 * @brief   Port A interrupt handler
 ******************************************************************************/
void PORTA_IRQHandler(void)
{
  register uint32_t temp32 = PORTA_ISFR;
  
  PORTA_ISFR = temp32;
  (void)(*g_PortACallback)(temp32);
}

/***************************************************************************//*!
 * @brief   I2C2 module interrupt handler.
 ******************************************************************************/
void I2C2_IRQHandler(void)
{
    I2C_DRV_IRQHandler(I2C2_IDX);
}
  
/***************************************************************************//*!
 * @brief   NMI exception handler
 * @details It will generate stop when SW2 pressed (PTA4).
 ******************************************************************************/
void NMI_Handler(void)
{
#ifdef DEBUG
  __asm("BKPT #0x03");
#endif
}

/***************************************************************************//*!
 * @brief   Hardfault exception handler
 * @details It will stop application in debugg mode with software breakpoint
 *          when hard fault event occur.
 ******************************************************************************/
void HardFault_Handler(void)
{
#ifdef DEBUG
  __asm("BKPT #0x03");
#endif
}
