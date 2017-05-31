/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
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
 *
 *
 * [File Name]     main.c
 * [Platform]      TWR-K80F150M
 * [Project]       app_demo_k80_flexio_camera
 * [Version]       1.00
 * [Author]        B34185
 * [Date]          12/08/2015
 * [Language]      'C'
 * [History]       1.00 - Original Release
 *
 */

//-----------------------------------------------------------------------
// Standard C/C++ Includes
//-----------------------------------------------------------------------

#include <stdio.h>
//-----------------------------------------------------------------------
// KSDK Includes
//-----------------------------------------------------------------------
#include "main.h"
//-----------------------------------------------------------------------
// Application Includes
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------   
void PORTA_InstallCallback(uint8_t priority, void (*callbackFunc)(uint32_t pin));
static void porta_callback(uint32_t pin);
static void eDma_Reset(edma_channel_indicator_t channel, edma_transfer_config_t *edma_config);
static void SMC_SetModeOnIsrExit(SMC_Type * base, const smc_power_mode_config_t *powerModeConfig);

//-----------------------------------------------------------------------
// Constants
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
// Typedefs
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------
#if DEMO_OPERATION_MODE != STOP_DMA_OPERATION_MODE
  // System clock configuration structure initialization
  const clock_manager_user_config_t g_RunClockConfig = HS_RUN_CLOCK_CONFIGURATION;
#else
  // System clock configuration structure initialization
  const clock_manager_user_config_t g_RunClockConfig = NORMAL_RUN_CLOCK_CONFIGURATION;
#endif

#if defined(__IAR_SYSTEMS_ICC__)
#pragma data_alignment=16
#elif defined(__ARMCC_VERSION)
__align(16) 
#endif
#if defined(__IAR_SYSTEMS_ICC__)
  #pragma location = 0x20000000
  static volatile uint16_t u16CameraFrameBuffer[OV7670_FRAME_PIXELS];
#elif defined(__ARMCC_VERSION)
  static uint16_t u16CameraFrameBuffer[OV7670_FRAME_PIXELS] __attribute__((section(".ARM.__at_0x20000000")));
#endif
  
#if defined(__IAR_SYSTEMS_ICC__)
#pragma data_alignment=16
#elif defined(__ARMCC_VERSION)
__align(16) 
#endif
static volatile uint32_t u32AddrCameraFrameBuffer = (uint32_t)&u16CameraFrameBuffer;

// OV7670 configuration structures
static uint8_t receiveBuff = 0xFF;
static uint8_t sendBuff = 0xFF;
static ov7670_handler_t ov7670_handler = OV7670_HANDLER;
static ov7670_advanced_config_t ov7670_advanced_config = OV7670_ADVANCED_CONFIGURATION;
const ov7670_config_t ov7670_config = OV7670_CONFIGURATION;

/* Define and initialize FlexIO module configuration structure */
static flexio_user_config_t flexioModuleConfig = FLEXIO_MODULE_CONFIG;

// FlexIO camera configuration structures
static flexio_camera_edma_handler_t flexio_camera_handler = FLEXIO_CAMERA_HANDLER;
static flexio_camera_user_config_t flexio_camera_user_config = FLEXIO_CAMERA_USER_CONFIG;
static camera_edma_user_config_t camera_edma_user_config = EDMA_CAMERA_USER_CONFIG;

// eDMA configuration structures
static edma_user_config_t edmaUserConfig = EDMA_USER_CONFIG;
static edma_state_t edmaState;
static edma_software_tcd_t rxEdmaChnStcd;
static edma_chn_state_t edma_chn_2_state = EDMA_CHANNEL_2_STATE;
static edma_chn_state_t edma_chn_3_state = EDMA_CHANNEL_3_STATE;
static edma_chn_state_t edma_chn_16_state = EDMA_CHANNEL_16_STATE;
static edma_transfer_config_t edma2_transfer_config = eDMA2_CONFIG;
static edma_transfer_config_t edma3_transfer_config = eDMA3_CONFIG;
static edma_transfer_config_t edma16_transfer_config = eDMA16_CONFIG;
static edma_transfer_config_t edma17_transfer_config = eDMA17_CONFIG;

// Low power configuration structures
static pmc_bandgap_buffer_config_t pmc_bandgap_buffer_config = PMC_BANDGAP_CONFIG;
static smc_power_mode_config_t smc_power_mode_config = SMC_POWER_MODE_CONFIG;

// Utilities
volatile bool bStopModeEntered = false;

//-----------------------------------------------------------------------
// Macros
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------
int main(void)
{
  ov7670_status_t ov7670_status;
  
  OSA_Init();  
  hardware_init();
  configure_clkout_pin();

  // OV7670 camera configuration
  configure_app_i2c_pins();
  ov7670_status = OV7670_Init(&ov7670_handler, (ov7670_config_t*)&ov7670_config);
  while(ov7670_status != kStatus_OV7670_Success);
#if DEMO_OPERATION_MODE == STOP_DMA_OPERATION_MODE
  /* Disable clock gate to I2C2 module due to power comsuption */
  SIM_HAL_DisableClock(SIM, kSimClockGateI2c2);
#endif
  
  // LCD configuration
  configure_app_flexbus_pins();
  Init_SSD1289();  
  SetOrientation_SSD1289(LCD_LANDSCAPE);
  ClearScreen_SSD1289(0x0000);
  SetWindow_SSD1289(LCD_HORIZONTAL_START_POINT, LCD_VERTICAL_START_POINT,       \
                    LCD_HORIZONTAL_END_POINT, LCD_VERTICAL_END_POINT);
   
  // Additional eDMA channels configuration
  EDMA_DRV_Init(&edmaState, &edmaUserConfig);
  EDMA_DRV_RequestChannel(kEDMAChannel2, kDmaRequestMux0PortA, &edma_chn_2_state);
  EDMA_DRV_RequestChannel(kEDMAChannel3, kDmaRequestMux0PortA, &edma_chn_3_state);
  EDMA_DRV_RequestChannel(kEDMAChannel16, kDmaRequestMux0Group1FlexIO0Channel0, &edma_chn_16_state);
  uint32_t ret;
#if DEMO_OPERATION_MODE != NORMAL_RUN_IRQ_OPERATION_MODE
  memset(&rxEdmaChnStcd, 0, sizeof(edma_software_tcd_t));
  ret = EDMA_DRV_PrepareDescriptorTransfer( 
                            &edma_chn_2_state,
                            &rxEdmaChnStcd,
                            &edma2_transfer_config,
                            false,
                            false
                            );
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
  ret = EDMA_DRV_PushDescriptorToReg( &edma_chn_2_state, &rxEdmaChnStcd);
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
  memset(&rxEdmaChnStcd, 0, sizeof(edma_software_tcd_t));
  ret = EDMA_DRV_PrepareDescriptorTransfer( 
                            &edma_chn_3_state,
                            &rxEdmaChnStcd,
                            &edma3_transfer_config,
                            false,
                            false
                            );
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
  ret = EDMA_DRV_PushDescriptorToReg( &edma_chn_3_state, &rxEdmaChnStcd);
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
#endif
  memset(&rxEdmaChnStcd, 0, sizeof(edma_software_tcd_t));
  ret = EDMA_DRV_PrepareDescriptorTransfer( 
                            &edma_chn_16_state,
                            &rxEdmaChnStcd,
                            &edma16_transfer_config,
                            false,
                            false
                            );
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
  ret = EDMA_DRV_PushDescriptorToReg( &edma_chn_16_state, &rxEdmaChnStcd);
  if (ret == kEDMAInvalidChannel)
  {
      return 1;
  }
  EDMA_HAL_SetAsyncRequestInStopModeCmd(DMA0, kEDMAChannel16, true);
  EDMA_HAL_SetAsyncRequestInStopModeCmd(DMA0, kEDMAChannel2, true);
  EDMA_HAL_SetAsyncRequestInStopModeCmd(DMA0, kEDMAChannel3, true);
  EDMA_DRV_StartChannel(&edma_chn_16_state);
  EDMA_DRV_StartChannel(&edma_chn_2_state);
  EDMA_DRV_StartChannel(&edma_chn_3_state);
  
  // FlexIO camera configuration 
  configure_app_flexio_pins();
  FLEXIO_DRV_Init(0,&flexioModuleConfig);
  FLEXIO_Camera_DRV_InitEdmaRx( &flexio_camera_handler,                   
                                &flexio_camera_user_config, 
                                &camera_edma_user_config);
  FLEXIO_Camera_DRV_SetBufferTriggerForExtEdma(&flexio_camera_handler,0x0,true);
  FLEXIO_Camera_DRV_StartEdmaRx(&flexio_camera_handler);
  EDMA_HAL_SetAsyncRequestInStopModeCmd(DMA0, kEDMAChannel17, true);
  FLEXIO_DRV_Start(0);

  // VSYNC pin Configure
  PORTA_InstallCallback(1, porta_callback);
  configure_app_gpio_pins();

  // STOP mode configuration 
#if DEMO_OPERATION_MODE == STOP_DMA_OPERATION_MODE
  PMC_HAL_GetAckIsolation(PMC);
  PMC_HAL_LowVoltDetectConfig(PMC, false, false, kPmcLowVoltDetectVoltLowTrip);
  PMC_HAL_LowVoltWarnConfig(PMC, false, kPmcLowVoltWarnVoltLowTrip);
  PMC_HAL_BandgapBufferConfig(PMC, &pmc_bandgap_buffer_config);
#endif 
  
  while(1)                                         
  {
  }
}

//-----------------------------------------------------------------------
// Local Functions
//-----------------------------------------------------------------------
/***************************************************************************//*!
 * @brief   eDMA module reset (reset of src, dest addresss and CITTER reinit)
 * @note    When lower frame rate is used then FLEXIO_Camera_DRV_ResetEdmaRx
 *          driver function can be used instead to reset edma channels 17.
 * @warning Non.
 ******************************************************************************/
static void eDma_Reset(edma_channel_indicator_t channel, edma_transfer_config_t *edma_config)
{
  EDMA_HAL_HTCDSetSrcAddr(DMA0, channel, edma_config->srcAddr);
  EDMA_HAL_HTCDSetDestAddr(DMA0, channel, edma_config->destAddr);
  EDMA_HAL_HTCDSetMajorCount(DMA0, channel, edma_config->majorLoopCount);
}

/***************************************************************************//*!
 * @brief   portacallback function
 * @details Function provided handling of porta IRQ.
 * @param   pin - pin mask 
 * @return  void
 * @note    Non.
 * @warning Non.
 ******************************************************************************/
static void porta_callback(uint32_t pin)
{
#if DEMO_OPERATION_MODE == NORMAL_RUN_IRQ_OPERATION_MODE
  if (pin == (1<<13))
  {
    eDma_Reset(kEDMAChannel16, &edma16_transfer_config);
    eDma_Reset(kEDMAChannel17, &edma17_transfer_config);
    SetWindow_SSD1289(LCD_HORIZONTAL_START_POINT, LCD_VERTICAL_START_POINT,     \
                      LCD_HORIZONTAL_END_POINT, LCD_VERTICAL_END_POINT);
  }
#elif DEMO_OPERATION_MODE == STOP_DMA_OPERATION_MODE
  if (pin & (1<<21))
  {
    if (bStopModeEntered == true)
    {
      SetWindow_SSD1289(LCD_HORIZONTAL_START_POINT, LCD_VERTICAL_START_POINT,   \
                        LCD_HORIZONTAL_END_POINT, LCD_VERTICAL_END_POINT);
      uint32_t i;
      for (i = 0; i < OV7670_FRAME_PIXELS; i++)
      {
        Send_PixelColor_SSD1289(u16CameraFrameBuffer[i]);
      }
    }
    else
    {
      EDMA_HAL_SetDmaRequestCmd(DMA0, kEDMAChannel16, false);
      SMC_SetModeOnIsrExit(SMC, &smc_power_mode_config);
    }
    bStopModeEntered = true;
  }
#endif  
}

/***************************************************************************//*!
 * @brief   Config the power mode on the exit oof interrupt service routine
 * @details Enter selected low power mode on exit of last pending interrupt.
 * @param   SMC base address
 * @return  void
 * @note    Non.
 * @warning Non.
 ******************************************************************************/
static void SMC_SetModeOnIsrExit(SMC_Type * base, const smc_power_mode_config_t *powerModeConfig)
{
    volatile uint32_t dummyRead;
    smc_stop_mode_t stopMode;

    SMC_BWR_PMCTRL_RUNM(base, kSmcRun);
    while (kStatRun != SMC_HAL_GetStat(base));

    SMC_BWR_STOPCTRL_PSTOPO(base, powerModeConfig->pstopOptionValue);
    SMC_BWR_STOPCTRL_LPOPO(base, powerModeConfig->lpoOptionValue);
    SMC_BWR_STOPCTRL_PORPO(base, powerModeConfig->porOptionValue);
    SMC_BWR_STOPCTRL_RAM2PO(base, powerModeConfig->ram2OptionValue);
    switch(powerModeConfig->powerModeName)
    {
      case kPowerModeStop: stopMode = kSmcStop; break;
      case kPowerModeVlps: stopMode = kSmcVlps; break;
      case kPowerModeLls: stopMode = kSmcLls; SMC_BWR_STOPCTRL_LLSM(base, powerModeConfig->stopSubMode); break;
      case kPowerModeVlls: stopMode = kSmcVlls; SMC_BWR_STOPCTRL_LLSM(base, powerModeConfig->stopSubMode); break;
    }
    SMC_BWR_PMCTRL_STOPM(base, stopMode);
    SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
    dummyRead = SMC_RD_PMCTRL(base);
    SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;
}

////////////////////////////////////////////////////////////////////////////////
// EOF
////////////////////////////////////////////////////////////////////////////////
