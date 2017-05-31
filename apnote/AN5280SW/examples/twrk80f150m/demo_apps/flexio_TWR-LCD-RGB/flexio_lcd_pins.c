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

#include "flexio_lcd_pins.h"
#include "fsl_port_hal.h"

/***************************************************************************//*!
 * @brief   FlexIO Pin Mux Settings for LCD
 * @details sets pin mux for this example since not done in board pin_mux files
 *
 ******************************************************************************/
void flexio_lcd_pin_mux(void)
{

    /* Parallel Pixel Data Pins */
    PORT_HAL_SetMuxMode(PORTA,10u,kPortMuxAlt5);        /* FXIO0_D16 */
    PORT_HAL_SetMuxMode(PORTA,11u,kPortMuxAlt5);        /* FXIO0_D17 */
    PORT_HAL_SetMuxMode(PORTA,12u,kPortMuxAlt5);        /* FXIO0_D18 */
    PORT_HAL_SetMuxMode(PORTA,13u,kPortMuxAlt5);        /* FXIO0_D19 */
    PORT_HAL_SetMuxMode(PORTA,14u,kPortMuxAlt5);        /* FXIO0_D20 */
    PORT_HAL_SetMuxMode(PORTA,15u,kPortMuxAlt5);        /* FXIO0_D21 */
    PORT_HAL_SetMuxMode(PORTA,16u,kPortMuxAlt5);        /* FXIO0_D22 */
    PORT_HAL_SetMuxMode(PORTA,17u,kPortMuxAlt5);        /* FXIO0_D23 */
    PORT_HAL_SetMuxMode(PORTD, 8u,kPortMuxAlt7);        /* FXIO0_D24 */
    PORT_HAL_SetMuxMode(PORTD, 9u,kPortMuxAlt7);        /* FXIO0_D25 */
    PORT_HAL_SetMuxMode(PORTD,10u,kPortMuxAlt7);        /* FXIO0_D26 */
    PORT_HAL_SetMuxMode(PORTD,11u,kPortMuxAlt7);        /* FXIO0_D27 */
    PORT_HAL_SetMuxMode(PORTD,12u,kPortMuxAlt7);        /* FXIO0_D28 */
    PORT_HAL_SetMuxMode(PORTD,13u,kPortMuxAlt7);        /* FXIO0_D29 */
    PORT_HAL_SetMuxMode(PORTD,14u,kPortMuxAlt7);        /* FXIO0_D30 */
    PORT_HAL_SetMuxMode(PORTD,15u,kPortMuxAlt7);        /* FXIO0_D31 */
        
    /* Pixel Data Output Enable Pin */
    PORT_HAL_SetMuxMode(PORTA, 1u,kPortMuxAlt5);        /* FXIO0_D11 */
    
    /* Pixel Clock Pin */
    PORT_HAL_SetMuxMode(PORTA, 5u,kPortMuxAlt5);        /* FXIO0_D15 */
    
    /* VSYNC Pin */
    PORT_HAL_SetMuxMode(PORTB,18u,kPortMuxAlt7);        /* FXIO0_D6 */
    
    /* HSYNC Pin */
    PORT_HAL_SetMuxMode(PORTB,19u,kPortMuxAlt7);        /* FXIO0_D7 */
}


/* EOF flexio_lcd_pins.c */

