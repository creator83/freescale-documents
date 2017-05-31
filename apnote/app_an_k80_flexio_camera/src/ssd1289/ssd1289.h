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

#ifndef __SSD1289_H
#define __SSD1289_H

#include "stdint.h"
#include "fsl_flexbus_driver.h"

/******************************************************************************
* Enum
******************************************************************************/
typedef enum
{
  LCD_PORTRAIT,
  LCD_PORTRAIT180,
  LCD_LANDSCAPE,
  LCD_LANDSCAPE180,
} LCD_ORIENTATION_TYPE;

/******************************************************************************
* Includes
******************************************************************************/

/******************************************************************************
* Defines
******************************************************************************/
#define SCREEN_SIZE_LONGER_SIDE         320
#define SCREEN_SIZE_SHORTER_SIDE        240
#define SCREEN_PIXEL_COUNT (SCREEN_SIZE_SHORTER_SIDE * SCREEN_SIZE_LONGER_SIDE)

/******************************************************************************
* Types
******************************************************************************/
unsigned char Init_SSD1289(void);
unsigned char DeInit_SSD1289(void);
unsigned char SetWindow_SSD1289(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
unsigned char SetOrientation_SSD1289(LCD_ORIENTATION_TYPE orientation);
unsigned char ClearScreen_SSD1289(uint16_t color);
void Send_PixelColor_SSD1289(uint16_t value);
uint16_t Get_PixelColor_SSD1289(void);

/******************************************************************************
* Macros
******************************************************************************/
/***************************************************************************//*!
 * @brief   FlexBus module configuration initialization structure.
 ******************************************************************************/
#define FLEXBUS_USER_CONFIG                                                     \
{                                                                               \
    .chip = 0x0,                                                                \
    .waitStates =0x0,                                                           \
    .baseAddress = 0x60000000,                                                  \
    .baseAddressMask = 0x00000001,                                              \
    .writeProtect = false,                                                      \
    .burstWrite = false,                                                        \
    .burstRead = false,                                                         \
    .byteEnableMode = false,                                                    \
    .autoAcknowledge = true,                                                    \
    .extendTransferAddress = false,                                             \
    .secondaryWaitStates = false,                                               \
    .portSize = kFlexbus2bytes,                                                 \
    .byteLaneShift = kFlexbusShifted,                                           \
    .writeAddressHold = kFlexbusHold1cycle,                                     \
    .readAddressHold = kFlexbusHold1or0cycle,                                   \
    .addressSetup = kFlexbusFirstRisingEdge,                                    \
    .group1MultiplexControl = kFlexbusMultiplexGroup1_FB_ALE,                   \
    .group2MultiplexControl = kFlexbusMultiplexGroup2_FB_CS4,                   \
    .group3MultiplexControl = kFlexbusMultiplexGroup3_FB_CS5,                   \
    .group4MultiplexControl = kFlexbusMultiplexGroup4_FB_TBST,                  \
    .group5MultiplexControl = kFlexbusMultiplexGroup5_FB_TA,                    \
}

/******************************************************************************
* Global variables
******************************************************************************/
extern flexbus_user_config_t flexbus_use_config;

/******************************************************************************
* Global functions
******************************************************************************/

#endif /* __SSD1289_H */










