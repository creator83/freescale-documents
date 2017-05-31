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
 * [File Name]     main.h
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
// KSDK Includes
//-----------------------------------------------------------------------
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_clock_manager.h"
#include "fsl_interrupt_manager.h"
#include "fsl_power_manager.h"
#include "fsl_adc16_driver.h"
#include "fsl_cmp_driver.h"
#include "fsl_cmt_driver.h"
#include "fsl_crc_driver.h"
#include "fsl_dac_driver.h"
#include "fsl_dspi_edma_master_driver.h"
#include "fsl_dspi_edma_slave_driver.h"
#include "fsl_dspi_master_driver.h"
#include "fsl_dspi_slave_driver.h"
#include "fsl_edma_driver.h"
#include "fsl_ewm_driver.h"
#include "fsl_flexbus_driver.h"
#include "fsl_flexio_camera_edma_driver.h"
#include "fsl_flexio_driver.h"
#include "fsl_flexio_i2c_master_driver.h"
#include "fsl_flexio_i2s_driver.h"
#include "fsl_flexio_spi_driver.h"
#include "fsl_flexio_uart_driver.h"
#include "fsl_flexio_uart_edma_driver.h"
#include "fsl_ftm_driver.h"
#include "fsl_gpio_driver.h"
#include "fsl_i2c_master_driver.h"
#include "fsl_i2c_slave_driver.h"
#include "fsl_lmem_cache_driver.h"
//#include "fsl_lptmr_driver.h"
#include "fsl_lpuart_driver.h"
#include "fsl_lpuart_edma_driver.h"
#include "fsl_mpu_driver.h"
#include "fsl_pdb_driver.h"
#include "fsl_pit_driver.h"
#include "fsl_qspi_driver.h"
#include "fsl_rtc_driver.h"
#include "fsl_sai_driver.h"
#include "fsl_sdhc_driver.h"
#include "fsl_sdramc_driver.h"
#include "fsl_smartcard_driver.h"
#if defined(FSL_FEATURE_SOC_EMVSIM_COUNT)
#if (FSL_FEATURE_SOC_EMVSIM_COUNT >= 1)
#include "fsl_smartcard_emvsim_driver.h"
#endif
#endif
#if defined(FSL_FEATURE_UART_HAS_SMART_CARD_SUPPORT)
#if (FSL_FEATURE_UART_HAS_SMART_CARD_SUPPORT == 1)
#include "fsl_smartcard_uart_driver.h"
#endif
#endif
#include "fsl_tpm_driver.h"
#include "fsl_trng_driver.h"
#include "fsl_tsi_driver.h"
#include "fsl_vref_driver.h"
#include "fsl_wdog_driver.h"
#if USING_DIRECT_INTERFACE
#include "fsl_smartcard_direct_driver.h"
#endif
#if USING_NCN8025_INTERFACE
#include "fsl_smartcard_ncn8025_driver.h"
#endif

#include "fsl_pmc_hal.h"
#include "board.h"
#include "fsl_ov7670_driver.h"
#include "SSD1289.h"
   
/*******************************************************************************
 * Defines
 ******************************************************************************/   
typedef enum 
{
  ERROR_CALLBACK=0x1,          ///< at least one error generated  
  REQUEST_CALLBACK=0x2,        ///< data transfer completion
  MAJOR_LOOP_CALLBACK=0x4,     ///< major loop complete
  HALF_MAJOR_LOOP_CALLBACK=0x8,///< half of major loop complete
} DMA_CALLBACK_TYPE;

/*******************************************************************************
 * Defines
 ******************************************************************************/
// Picture data
#define OV7670_BYTES_PER_PIXEL          2
#define OV7670_HORIZONTAL_POINTS        320
#define OV7670_VERTICAL_POINTS          240
#define OV7670_FRAME_PIXELS             (OV7670_HORIZONTAL_POINTS * OV7670_VERTICAL_POINTS)
#define OV7670_FRAME_BYTES              (OV7670_FRAME_PIXELS * OV7670_BYTES_PER_PIXEL)
#define LCD_HORIZONTAL_START_POINT      ((SCREEN_SIZE_LONGER_SIDE - OV7670_HORIZONTAL_POINTS)>>1)
#define LCD_VERTICAL_START_POINT        ((SCREEN_SIZE_SHORTER_SIDE - OV7670_VERTICAL_POINTS)>>1)
#define LCD_HORIZONTAL_END_POINT        (LCD_HORIZONTAL_START_POINT + OV7670_HORIZONTAL_POINTS -1)
#define LCD_VERTICAL_END_POINT          (LCD_VERTICAL_START_POINT + OV7670_VERTICAL_POINTS -1)

#define STOP_DMA_OPERATION_MODE         0x0
#define NORMAL_RUN_DMA_OPERATION_MODE   0x1
#define NORMAL_RUN_IRQ_OPERATION_MODE   0x2

#define DEMO_OPERATION_MODE     STOP_DMA_OPERATION_MODE

/*******************************************************************************
 * Function prototypes
 ******************************************************************************/
void configure_clkout_pin(void);
void configure_app_gpio_pins(void);
void configure_app_i2c_pins();
void configure_app_flexio_pins(void);
void configure_app_flexbus_pins(void);

/*******************************************************************************
 * Global variables
 ******************************************************************************/
extern const clock_manager_user_config_t g_RunClockConfig;
extern volatile uint16_t *p_u16CameraFrameBuffer;
extern volatile uint8_t u8PowerModeEnter;

/***************************************************************************//*!
 * @brief   High speed run mode clock 150MHz configuration structure initialization
 ******************************************************************************/
#define HS_RUN_CLOCK_CONFIGURATION                                              \
{                                                                               \
    .mcgConfig =                                                                \
    {                                                                           \
        .mcg_mode               = kMcgModePEE,                                  \
        .irclkEnable            = false,                                         \
        .irclkEnableInStop      = false,                                        \
        .ircs                   = kMcgIrcFast,                                  \
        .fcrdiv                 = 0U,                                           \
        .frdiv                  = 3U,                                           \
        .drs     = kMcgDcoRangeSelLow,                                          \
        .dmx32   = kMcgDmx32Default,                                            \
        .oscsel  = kMcgOscselOsc,                                               \
        .pll0EnableInFllMode = false,                                           \
        .pll0EnableInStop  = true,                                              \
        .prdiv0            = 0x00U,                                             \
        .vdiv0             = 0x09U,                                             \
    },                                                                          \
    .simConfig =                                                                \
    {                                                                           \
        .pllFllSel = kClockPllFllSelPll,                                        \
        .pllflldiv = 0,                                                         \
        .pllfllfrac = 0,                                                        \
        .er32kSrc  = kClockEr32kSrcRtc,                                         \
        .outdiv1   = 0U,                                                        \
        .outdiv2   = 1U,                                                        \
        .outdiv3   = 2U,                                                        \
        .outdiv4   = 5U,                                                        \
    },                                                                          \
    .oscerConfig =                                                              \
    {                                                                           \
        .enable       = true,                                                   \
        .enableInStop = true,                                                   \
    }                                                                           \
}

/***************************************************************************//*!
 * @brief   Normal speed run mode clock 120MHz configuration structure initialization
 ******************************************************************************/
#define NORMAL_RUN_CLOCK_CONFIGURATION                                          \
{                                                                               \
    .mcgConfig =                                                                \
    {                                                                           \
        .mcg_mode               = kMcgModePEE,                                  \
        .irclkEnable            = false,                                        \
        .irclkEnableInStop      = false,                                        \
        .ircs                   = kMcgIrcFast,                                  \
        .fcrdiv                 = 0U,                                           \
        .frdiv                  = 3U,                                           \
        .drs     = kMcgDcoRangeSelLow,                                          \
        .dmx32   = kMcgDmx32Default,                                            \
        .oscsel  = kMcgOscselOsc,                                               \
        .pll0EnableInFllMode = false,                                           \
        .pll0EnableInStop  = true,                                              \
        .prdiv0            = 0x00U,                                             \
        .vdiv0             = 0x04U,                                             \
    },                                                                          \
    .simConfig =                                                                \
    {                                                                           \
        .pllFllSel = kClockPllFllSelPll,                                        \
        .pllflldiv = 0,                                                         \
        .pllfllfrac = 0,                                                        \
        .er32kSrc  = kClockEr32kSrcRtc,                                         \
        .outdiv1   = 0U,                                                        \
        .outdiv2   = 1U,                                                        \
        .outdiv3   = 2U,                                                        \
        .outdiv4   = 5U,                                                        \
    },                                                                          \
    .oscerConfig =                                                              \
    {                                                                           \
        .enable       = true,                                                   \
        .enableInStop = true,                                                   \
    }                                                                           \
}

/***************************************************************************//*!
 * @brief   SMC power mode configuratoion
 ******************************************************************************/
#define SMC_POWER_MODE_CONFIG                                                   \
{                                                                               \
    .powerModeName = kPowerModeStop,                                            \
    .stopSubMode = kSmcStopSub0,                                                \
    .porOptionValue = kSmcPorDisabled,                                          \
    .ram2OptionValue = kSmcRam2DisPowered,                                      \
    .pstopOptionValue = kSmcPstopStop1,                                         \
    .lpoOptionValue = kSmcLpoDisabled,                                          \
}

/***************************************************************************//*!
 * @brief   PMC bandgap configuratoion
 ******************************************************************************/
#define PMC_BANDGAP_CONFIG                                                      \
{                                                                               \
    .enable = false,                                                            \
    .enableInLowPower = false,                                                  \
}

/***************************************************************************//*!
 * @brief   OV7670 device SCCB / I2C configuration handler structure initialization
 ******************************************************************************/
#define OV7670_HANDLER                                                          \
{                                                                               \
  .i2cInstance = 2,                                                             \
  .device.address = OV7670_I2C_ADDR,                                            \
  .device.baudRate_kbps = OV7670_I2C_BAUDRATE,                                  \
  .state =                                                                      \
  {                                                                             \
    .rxBuff = &receiveBuff,                                                     \
    .rxSize = sizeof(receiveBuff),                                              \
    .txBuff = &sendBuff,                                                        \
    .txSize = sizeof(sendBuff),                                                 \
    .status = kStatus_I2C_Success,                                              \
    .i2cIdle = 0,                                                               \
    .isBlocking = 0,                                                            \
    .isRequesting = 0,                                                          \
    .lastBaudRate_kbps = 100,                                                   \
    .irqSync =                                                                  \
    {                                                                           \
      .isWaiting = 0,                                                           \
      .semCount = 0,                                                            \
      .time_start = 0,                                                          \
      .timeout = 0,                                                             \
    },                                                                          \
  },                                                                            \
}

/***************************************************************************//*!
 * @brief   OV7670 device configuration structure initialization
 ******************************************************************************/
#define OV7670_CONFIGURATION                                                    \
{                                                                               \
  .output_format = (ov7670_output_format_cfg_t*)&OV7670_FORMAT_RGB565,          \
  .resolution =                                                                 \
  {                                                                             \
    .width = OV7670_HORIZONTAL_POINTS,                                          \
    .heigth = OV7670_VERTICAL_POINTS,                                           \
  },                                                                            \
  .frame_rate = (ov7670_frame_rate_cfg_t*)&OV7670_30FPS_12MHZ_XCLK,             \
  .contrast = 0x30,                                                             \
  .brightness = 0x10,                                                           \
  .advanced_config = &ov7670_advanced_config,                                   \
}

/***************************************************************************//*!
 * @brief   OV7670 device configuration structure initialization
 ******************************************************************************/
#define OV7670_ADVANCED_CONFIGURATION                                           \
{                                                                               \
  .filter = (ov7670_filter_cfg_t*)&OV7670_FILTER_DISABLED,                      \
  .night_mode = (ov7670_night_mode_cfg_t*)&OV7670_NIGHT_MODE_DISABLED,          \
  .white_balance = (ov7670_white_balance_cfg_t*)&OV7670_WHITE_BALANCE_SIMPLE,   \
  .light_mode = (ov7670_light_mode_cfg_t*)&OV7670_LIGHT_MODE_DISABLED,          \
  .color_saturation = (ov7670_color_saturation_cfg_t*)&OV7670_COLOR_SATURATION_2PLUS,\
  .special_effect = (ov7670_special_effect_cfg_t*)&OV7670_SPECIAL_EFFECT_DISABLED,\
  .gamma_curve_slope = (ov7670_gamma_curve_slope_cfg_t*)&OV7670_GAMMA_CURVE_SLOPE_DEFAULT,\
}

/***************************************************************************//*!
 * @brief   FLEXIO camera device configuration structure initialization
 ******************************************************************************/
#define FLEXIO_CAMERA_DEVICE_CONFIG                                             \
{                                                                               \
    .*flexioBase = FLEXIO0,                                                     \
    .datPinStartIdx = 24,                                                       \
    .pclkPinIdx = 1,                                                            \
    .hrefPinIdx = 18,                                                           \
    .shifterStartIdx = 0,                                                       \
    .shifterCount = 8,                                                          \
    .timerIdx = 0,                                                              \
}

/***************************************************************************//*!
 * @brief   DMA0 channel 17 configuration structure.
 * @details This DMA channels should ensure 32 bytes data transders (burns) from
 *          shifter0-7 buffer to the one frame data circular buffer (150kB).
 *          At the end it means 4800 (major loop) x 32-bytes (minor loops) 
 *          transfers. Data are transfered based on shifter 0 status flag  
 *          (all shifter full-filled by appropriate data).
 ******************************************************************************/
#define eDMA17_CONFIG                                                           \
{                                                                               \
  .srcAddr            = (uint32_t)&FLEXIO0_SHIFTBUF0,                           \
  .destAddr           = (uint32_t)u16CameraFrameBuffer,                         \
  .srcTransferSize    = kEDMATransferSize_32Bytes,                              \
  .destTransferSize   = kEDMATransferSize_32Bytes,                              \
  .srcOffset          = 0,                                                      \
  .destOffset         = 32,                                                     \
  .srcLastAddrAdjust  = 0,                                                      \
  .destLastAddrAdjust = -((sizeof(u16CameraFrameBuffer))),                      \
  .srcModulo          = kEDMAModuloDisable,                                     \
  .destModulo         = kEDMAModuloDisable,                                     \
  .minorLoopCount     = 32,                                                     \
  .majorLoopCount     = ((sizeof(u16CameraFrameBuffer)>>5)),                    \
}

/***************************************************************************//*!
 * @brief   FLEXIO camera edma handler configuration structure initialization
 ******************************************************************************/
#define FLEXIO_CAMERA_HANDLER                                                   \
{                                                                               \
    .flexioCameraHwConfig =                                                     \
    {                                                                           \
      .flexioBase = FLEXIO0,                                                    \
      .datPinStartIdx = 24,                                                     \
      .pclkPinIdx = 1,                                                          \
      .hrefPinIdx = 18,                                                         \
      .shifterStartIdx = 0,                                                     \
      .shifterCount = 8,                                                        \
      .timerIdx = 0,                                                            \
    },                                                                          \
    .rxEdmaChnState =                                                           \
    {                                                                           \
      .channel = kEDMAChannel17,                                                \
      .callback = NULL,                                                         \
      .parameter = NULL,                                                        \
      .status = kEDMAChnNormal,                                                 \
    },                                                                          \
    .userEdmaChn = kEDMAChannel16,                                              \
    .userBufAddr = (uint32_t)&u16CameraFrameBuffer,                             \
    .userBufLenByte = sizeof(u16CameraFrameBuffer),                             \
}                                                                               \

/***************************************************************************//*!
 * @brief   FlexIO module configuration structure initialization
 * @details Flexio is disabled to work in debug and doze (stop, wait) mode. 
 *          Fast acces is not enabled.
 ******************************************************************************/
#define FLEXIO_MODULE_CONFIG                                                    \
{                                                                               \
    .useInt = true,                                                             \
    .onDozeEnable = false,                                                      \
    .onDebugEnable = false,                                                     \
    .fastAccessEnable = true                                                    \
}
  
/***************************************************************************//*!
 * @brief   FLEXIO camera user configuration structure initialization
 ******************************************************************************/
#define FLEXIO_CAMERA_USER_CONFIG                                               \
{                                                                               \
    .flexioInstance = 0,                                                        \
    .datPinStartIdx = 24,                                                       \
    .pclkPinIdx = 1,                                                            \
    .hrefPinIdx = 18,                                                           \
    .shifterStartIdx = 0,                                                       \
    .timerIdx = 0,                                                              \
}

/***************************************************************************//*!
 * @brief   EDMA camera configuration structure initialization
 ******************************************************************************/
#define EDMA_CAMERA_USER_CONFIG                                                 \
{                                                                               \
    .userEdmaChn = kEDMAChannel17,                                              \
    .userBufAddr = (uint32_t)&u16CameraFrameBuffer,                             \
    .userBufLenByte = sizeof(u16CameraFrameBuffer),                             \
}

/***************************************************************************//*!
 * @brief   eDMA channel 16 state configuration structure initialization
 ******************************************************************************/
#define EDMA_CHANNEL_16_STATE                                                   \
{                                                                               \
    .channel = kEDMAChannel16,                                                  \
    .callback = NULL,                                                           \
    .parameter = NULL,                                                          \
    .status = kEDMAChnNormal,                                                   \
}

/***************************************************************************//*!
 * @brief   DMA0 channel 16 configuration structure.
 * @details This DMA channels should ensure 16-bit (2 bytes) data transders from
 *          camera frame buffer to flexbus (LCD SSD1289). At the end it means
 *          4800 (major loop) x 16 x 16-bit data transfers (32 bytes minor loops).
 *          These transfers ensures frame displaying. 
 *          Data are transfered based on shifter 0 status flag
 *          (all shifter full-filled by appropriate data).
 * @note    .destAddr = (uint32_t)(flexbus_use_config.baseAddress + flexbus_use_config.baseAddressMask)
 ******************************************************************************/
#define eDMA16_CONFIG                                                           \
{                                                                               \
  .srcAddr            = (uint32_t)u16CameraFrameBuffer,                         \
  .destAddr           = (uint32_t)(0x60010000),                                 \
  .srcTransferSize    = kEDMATransferSize_2Bytes,                               \
  .destTransferSize   = kEDMATransferSize_2Bytes,                               \
  .srcOffset          = 2,                                                      \
  .destOffset         = 0,                                                      \
  .srcLastAddrAdjust  = -((sizeof(u16CameraFrameBuffer))),                      \
  .destLastAddrAdjust = 0,                                                      \
  .srcModulo          = kEDMAModuloDisable,                                     \
  .destModulo         = kEDMAModuloDisable,                                     \
  .minorLoopCount     = 32,                                                     \
  .majorLoopCount     = ((sizeof(u16CameraFrameBuffer)>>5)),                    \
}

/***************************************************************************//*!
 * @brief   eDMA channel 2 state configuration structure initialization
 ******************************************************************************/
#define EDMA_CHANNEL_2_STATE                                                    \
{                                                                               \
    .channel = kEDMAChannel2,                                                   \
    .callback = NULL,                                                           \
    .parameter = NULL,                                                          \
    .status = kEDMAChnNormal,                                                   \
}

/***************************************************************************//*!
 * @brief   DMA0 channel 2 configuration structure.
 * @details This DMA channels should ensure one 32-bit (long) data transders from
 *          uint32_t values ( addresss of camera frame buffer) to DMA_TCD17_SADDR 
 *          register at VSYNC edge. This should ensure camera data synchronization.
 ******************************************************************************/
#define eDMA2_CONFIG                                                            \
{                                                                               \
  .srcAddr            = (uint32_t)&u32AddrCameraFrameBuffer,                    \
  .destAddr           = (uint32_t)&DMA_TCD17_DADDR,                             \
  .srcTransferSize    = kEDMATransferSize_4Bytes,                               \
  .destTransferSize   = kEDMATransferSize_4Bytes,                               \
  .srcOffset          = 0,                                                      \
  .destOffset         = 0,                                                      \
  .srcLastAddrAdjust  = 0,                                                      \
  .destLastAddrAdjust = 0,                                                      \
  .srcModulo          = kEDMAModuloDisable,                                     \
  .destModulo         = kEDMAModuloDisable,                                     \
  .minorLoopCount     = 4,                                                      \
  .majorLoopCount     = 1,                                                      \
}

/***************************************************************************//*!
 * @brief   eDMA channel 3 state configuration structure initialization
 ******************************************************************************/
#define EDMA_CHANNEL_3_STATE                                                    \
{                                                                               \
    .channel = kEDMAChannel16,                                                  \
    .callback = NULL,                                                           \
    .parameter = NULL,                                                          \
    .status = kEDMAChnNormal,                                                   \
}

/***************************************************************************//*!
 * @brief   DMA0 channel 3 configuration structure.
 * @details This DMA channels should ensure one 16-bit (short int) data transders from
 *          DMA_TCD17_BITER_ELINKNO register to DMA_TCD17_CITER_ELINKNO 
 *          register at VSYNC edge. This should ensure camera data synchronization.
 ******************************************************************************/
#define eDMA3_CONFIG                                                            \
{                                                                               \
  .srcAddr            = (uint32_t)&DMA_TCD17_BITER_ELINKNO,                     \
  .destAddr           = (uint32_t)&DMA_TCD17_CITER_ELINKNO,                     \
  .srcTransferSize    = kEDMATransferSize_2Bytes,                               \
  .destTransferSize   = kEDMATransferSize_2Bytes,                               \
  .srcOffset          = 0,                                                      \
  .destOffset         = 0,                                                      \
  .srcLastAddrAdjust  = 0,                                                      \
  .destLastAddrAdjust = 0,                                                      \
  .srcModulo          = kEDMAModuloDisable,                                     \
  .destModulo         = kEDMAModuloDisable,                                     \
  .minorLoopCount     = 2,                                                      \
  .majorLoopCount     = 1,                                                      \
}

/***************************************************************************//*!
 * @brief   eDMA module configuration initialization structure.
 * @note    .notHaltOnError should be false (KSDK version issue)
 ******************************************************************************/
#define EDMA_USER_CONFIG                                                        \
{                                                                               \
  .chnArbitration = kEDMAChnArbitrationRoundrobin,                              \
  .groupArbitration = kEDMAGroupArbitrationRoundrobin,                          \
  .groupPriority = kEDMAGroup0PriorityLowGroup1PriorityHigh,                    \
  .notHaltOnError = true,                                                       \
}
                                                                               
////////////////////////////////////////////////////////////////////////////////
// EOF                                                                          
////////////////////////////////////////////////////////////////////////////////
