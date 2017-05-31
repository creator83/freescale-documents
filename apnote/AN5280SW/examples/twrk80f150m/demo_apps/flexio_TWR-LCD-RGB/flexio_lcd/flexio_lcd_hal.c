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

#include "flexio_lcd_hal.h"
#include "fsl_clock_manager.h"
#if FSL_FEATURE_SOC_FLEXIO_COUNT

#if FSL_FEATURE_FLEXIO_HAS_PARALLEL_WIDTH

uint32_t FLEXIO_LCD_HAL_GetPCLKTimerCompare(flexio_lcd_dev_t *devPtr);
uint32_t FLEXIO_LCD_HAL_GetHsyncTimerCompare(flexio_lcd_dev_t *devPtr);

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_Configure
 * Description: Configure the flexio working as flexio_lcd device.
 *
 * 
 *
 *END*********************************************************************/
flexio_status_t FLEXIO_LCD_HAL_Configure(flexio_lcd_dev_t *devPtr)
{
    uint32_t i;
    flexio_status_t     status;
    flexio_shifter_config_t flexioShifter;
    flexio_timer_config_t flexioTimer;
    
    if (!devPtr)
    {
        return kStatus_FLEXIO_InvalidArgument;
    }    

    /* Check there are FlexIO timers for flexio_lcd */
    if((devPtr->timerStartIdx + kFlexioLCDNumOfTimers) >  FLEXIO_HAL_GetTimerNumber(devPtr->flexioBase))
    {
        /* Highest timer index requested does not exist in this device */
        return kStatus_FLEXIO_InvalidArgument;
    }
    
    /* Check there are FlexIO shifters for flexio_lcd */
    if((devPtr->shifterStartIdx + kFlexioLCDNumOfShifters) >  FLEXIO_HAL_GetShifterNumber(devPtr->flexioBase))
    {
        /* Highest timer index requested does not exist in this device */
        return kStatus_FLEXIO_InvalidArgument;
    }
    
    /* When using Shifter Logic Mode, check Logic output pin and shifter
     * that are configured in the driver match each other.  In this example,
     * kFlexioLCDShifterOEPin is shifter used in Logic Mode, and 
     * devPtr->oePinIdx is pin used for output*/
    if((kFlexioLCDShifterOEPin >= 0) && (kFlexioLCDShifterOEPin <= 3))
    {
        if(devPtr->oePinIdx != kFlexioLCDShifterOEPin + 4)
            return kStatus_FLEXIO_InvalidArgument;
    }
    else if((kFlexioLCDShifterOEPin >= 4) && (kFlexioLCDShifterOEPin <= 7))
    {
        if(devPtr->oePinIdx != kFlexioLCDShifterOEPin + 8)
            return kStatus_FLEXIO_InvalidArgument;
    }
    else
    {
        /* Invalid shifter number */
        return kStatus_FLEXIO_InvalidArgument;
    }
    
    /* When using Shifter Logic Mode, check the Logic input pins are in the 
     * proper range for the Logic output pin.  In this example, the input pins
     * are devPtr->horizOEPinIdx and devPtr->vertOEPinIdx.  The output pin is
     * devPtr->oePinIdx */
    if(((devPtr->oePinIdx - devPtr->horizOEPinIdx) > 4) && ((devPtr->oePinIdx - devPtr->horizOEPinIdx) < 1))
        return kStatus_FLEXIO_InvalidArgument;
    if(((devPtr->oePinIdx - devPtr->vertOEPinIdx ) > 4) && ((devPtr->oePinIdx - devPtr->vertOEPinIdx ) < 1))
        return kStatus_FLEXIO_InvalidArgument;
      
    /* Pixel Clock Timer Configuration 
     * This timer drives the pixel clock pin
     *  Trigger: None
     *  Pin: Output, active low
     *  Mode: 8-bit PWM to create clock signal with ~50% duty cycle
     *  Decrements: on FlexIO clock source
     *  Enabled: Always, timer counter never resets
     *  Compare Value: Calculated to generate required pixel clock frequency */
    /* Trigger. - not used with this timer */
    flexioTimer.trgsel      = FLEXIO_HAL_TIMER_TRIGGER_SEL_PININPUT(0);
    flexioTimer.trgpol      = kFlexioTimerTriggerPolarityActiveLow;
    flexioTimer.trgsrc      = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg      = kFlexioPinConfigOutput;
    flexioTimer.pinsel      = devPtr->pclkPinIdx;
    flexioTimer.pinpol      = kFlexioPinActiveLow;
    /* Timer. */
    flexioTimer.timod       = kFlexioTimerModeDual8BitPWM;
    flexioTimer.timout      = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec      = kFlexioTimerDecSrcOnFlexIOClockShiftTimerOutput;
    flexioTimer.timrst      = kFlexioTimerResetNever;
    flexioTimer.timdis      = kFlexioTimerDisableNever;
    flexioTimer.timena      = kFlexioTimerEnabledAlways;
    flexioTimer.tstop       = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart      = kFlexioTimerStartBitDisabled;
    flexioTimer.timcmp      = FLEXIO_LCD_HAL_GetPCLKTimerCompare(devPtr);
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerPCLK), &flexioTimer);
    
    /* Horizontal line Period Timer Configuration
     * This timer generates the horizontal period based on HSYNC period, and is
     * used by other horizontal timers and shifters.  Horizontal timing is based
     * on number of pixel clock periods.
     *  Trigger: None
     *  Pin: input, Pixel clock, active high
     *  Mode: 16-bit PWM, with PWM period set to HSYNC period
     *  Decrements: on pixel clock
     *  Enabled: Always, timer counter never resets
     *  Compare Value: Calculated to generate HSYNC period */
    /* Trigger. - not used with this timer */
    flexioTimer.trgsel   = FLEXIO_HAL_TIMER_TRIGGER_SEL_PININPUT(0);
    flexioTimer.trgpol   = kFlexioTimerTriggerPolarityActiveLow;
    flexioTimer.trgsrc   = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg   = kFlexioPinConfigOutputDisabled;
    flexioTimer.pinsel   = devPtr->pclkPinIdx;
    flexioTimer.pinpol   = kFlexioPinActiveHigh;
    /* Timer. */
    flexioTimer.timod    = kFlexioTimerModeSingle16Bit;
    flexioTimer.timout   = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec   = kFlexioTimerDecSrcOnPinInputShiftPinInput;
    flexioTimer.timrst   = kFlexioTimerResetNever;
    flexioTimer.timdis   = kFlexioTimerDisableNever;
    flexioTimer.timena   = kFlexioTimerEnabledAlways;
    flexioTimer.tstop    = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart   = kFlexioTimerStartBitDisabled;
    status = FLEXIO_LCD_HAL_GetHPeriodTimerCompare(devPtr, &flexioTimer.timcmp);
    if(status != kStatus_FLEXIO_Success)
        return status;
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHPeriod), &flexioTimer);
    
    /* Horizontal Output Enable Timer Configuration
     * This timer generates the horizontal component of the Output Enable 
     * signal.  The timer is enabled when the Output Enable signal is disabled
     * around the HSYNC pulse.  HSYNC pin shifter uses this timer for shifting.
     * This timer is enabled every horizontal period, and disables after the 
     * Output Enable is enabled for a new horizontal row.  The output of this 
     * timer is inverted from the Output Enable polarity
     *  Trigger: Horizontal Period Timer, active high
     *  Pin: input, Pixel clock, active high
     *  Mode: Dual 8-bit Counter baud/bit
     *  Decrements: on pixel clock
     *  Enabled: Horizontal period rising edge, disables on compare
     *  Compare Value: Calculated to generate Output Enable disable pulse width
     *    around HSYNC pulse */
    /* Trigger. */
    flexioTimer.trgsel       = FLEXIO_HAL_TIMER_TRIGGER_SEL_TIMn( \
        FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHPeriod));
    flexioTimer.trgpol       = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc       = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg       = kFlexioPinConfigOutputDisabled;
    flexioTimer.pinsel       = devPtr->pclkPinIdx; 
    flexioTimer.pinpol       = kFlexioPinActiveHigh;
    /* Timer. */
    flexioTimer.timod        = kFlexioTimerModeDual8BitBaudBit;
    flexioTimer.timout       = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec       = kFlexioTimerDecSrcOnPinInputShiftPinInput;
    flexioTimer.timrst       = kFlexioTimerResetNever;
    flexioTimer.timdis       = kFlexioTimerDisableOnTimerCompare;
    flexioTimer.timena       = kFlexioTimerEnableOnTriggerRisingEdge;
    flexioTimer.tstop        = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart       = kFlexioTimerStartBitDisabled;
    status = FLEXIO_LCD_HAL_GetHOETimerCompare(devPtr, &flexioTimer.timcmp);
    if(status != kStatus_FLEXIO_Success)
        return status;
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHOETimer), &flexioTimer);

    /* Horizontal Output Enable Pin Timer
     * This timer is used to output the Horizontal Output Enable signal on a 
     * pin.  It is identical to the Horizontal Output Enable timer output, but
     * inverted.  This output pin feeds the logic shifter to generate the final
     * Output Enable signal.
     *  Trigger: Horizontal Output Enable timer, active high
     *  Pin: Output but only used internally, active low
     *  Mode: 16-bit counter
     *  Decrements: on FlexIO clock source
     *  Enabled: on previous timer, the Horizontal Output Enable timer
     *  Compare Value: longest value used */
    /* Trigger. */
    flexioTimer.trgsel = FLEXIO_HAL_TIMER_TRIGGER_SEL_TIMn( \
                            FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHOETimer));
    flexioTimer.trgpol = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg = kFlexioPinConfigOutput;
    flexioTimer.pinsel = devPtr->horizOEPinIdx;
    flexioTimer.pinpol = kFlexioPinActiveLow;
    /* Timer. */
    flexioTimer.timod  = kFlexioTimerModeSingle16Bit;
    flexioTimer.timout = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec = kFlexioTimerDecSrcOnFlexIOClockShiftTimerOutput;
    flexioTimer.timrst = kFlexioTimerResetNever;
    flexioTimer.timdis = kFlexioTimerDisableOnPreTimerDisable;
    flexioTimer.timena = kFlexioTimerEnableOnPrevTimerEnable;
    flexioTimer.tstop  = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart = kFlexioTimerStartBitDisabled;
    flexioTimer.timcmp = 0xFFFF;        
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHOEPin), &flexioTimer);

    /* HSYNC Pin Shifter Configuration 
     * This shifter drives the HSYNC output to the LCD.  It is controlled by the
     * Horizontal Output Enable timer, and shifts out the HSYNC low pulse when
     * the Output Enable signal is disabled around the HSYNC pulse.
     *  Timer: Horizontal Output Enable timer, shift on positive edge
     *  Pin: single pin output, HSYNC, active high
     *  Mode: Transmit, drives output based on horizontal timing
     *  Shift Buffer Value: Calculated to drive HSYNC low pulse at proper time
     *    during Output Enable signal disabled around HSYNC */
    /* Timer */
    flexioShifter.timsel = FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerHOETimer);
    flexioShifter.timpol = kFlexioShifterTimerPolarityOnPositive;
    /* Pin */
    flexioShifter.pincfg = kFlexioPinConfigOutput;
    flexioShifter.pinsel = devPtr->hsyncPinIdx;
    flexioShifter.pinpol = kFlexioPinActiveHigh;
    /* Shifter. */
    flexioShifter.smode  = kFlexioShifterModeTransmit;
    flexioShifter.pwidth = 0;      // Single bit, not parallel
    flexioShifter.insrc  = kFlexioShifterInputFromPin;
    flexioShifter.sstop  = kFlexioShifterStopBitDisable;
    flexioShifter.sstart = kFlexioShifterStartBitDisabledLoadDataOnEnable;
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterHSYNC), &flexioShifter);
    FLEXIO_LCD_HAL_SetHSYNCPinShiftBuffer(devPtr, kFlexioLCDShifterHSYNC);

    /* Vertical Period Timer Configuration
     * This timer generates the vertical period based on VSYNC period, and is
     * used by other vertical timers and shifters.  Vertical timing is based
     * on number of HSYNC pulses.
     *  Trigger: HSYNC pin, active high
     *  Pin: input, HSYNC pin, active high
     *  Mode: 16-bit PWM, with PWM period set to VSYNC period
     *  Decrements: on HSYNC pin input
     *  Enabled: Always, timer counter never resets
     *  Compare Value: Calculated to generate VSYNC period */
    /* Trigger. */
    flexioTimer.trgsel   = FLEXIO_HAL_TIMER_TRIGGER_SEL_PININPUT(devPtr->hsyncPinIdx);
    flexioTimer.trgpol   = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc   = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg   = kFlexioPinConfigOutputDisabled;
    flexioTimer.pinsel   = devPtr->hsyncPinIdx;
    flexioTimer.pinpol   = kFlexioPinActiveHigh;
    /* Timer. */
    flexioTimer.timod    = kFlexioTimerModeSingle16Bit;
    flexioTimer.timout   = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec   = kFlexioTimerDecSrcOnTriggerInputShiftTimerOutput;
    flexioTimer.timrst   = kFlexioTimerResetNever;
    flexioTimer.timdis   = kFlexioTimerDisableNever;
    flexioTimer.timena   = kFlexioTimerEnabledAlways;
    flexioTimer.tstop    = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart   = kFlexioTimerStartBitDisabled;
    status = FLEXIO_LCD_HAL_GetVPeriodTimerCompare(devPtr, &flexioTimer.timcmp);
    if(status != kStatus_FLEXIO_Success)
        return status;
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVPeriod), &flexioTimer);

    /* Vertical Output Enable Timer Configuration
     * This timer generates the vertical component of the Output Enable 
     * signal.  The timer is enabled when the Output Enable signal is disabled
     * around the VSYNC pulse.  VSYNC pin shifter uses this timer for shifting.
     * This timer is enabled every vertical period, and disables after the 
     * Output Enable is enabled for a new frame.  The output of this 
     * timer is inverted from the Output Enable polarity
     *  Trigger: Vertical Period Timer, active high
     *  Pin: input, HSYNC pin, active high
     *  Mode: 16-bit Counter
     *  Decrements: on HYSNC pin
     *  Enabled: Vertical period rising edge which also resets the counter, 
     *    disables on compare
     *  Compare Value: Calculated to generate Output Enable disable pulse width
     *    around VSYNC pulse */
    /* Trigger. */
    flexioTimer.trgsel      = FLEXIO_HAL_TIMER_TRIGGER_SEL_TIMn( \
        FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVPeriod));
    flexioTimer.trgpol      = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc      = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg      = kFlexioPinConfigOutputDisabled;
    flexioTimer.pinsel      = devPtr->hsyncPinIdx;
    flexioTimer.pinpol      = kFlexioPinActiveHigh;
    /* Timer. */
    flexioTimer.timod       = kFlexioTimerModeSingle16Bit;
    flexioTimer.timout      = kFlexioTimerOutputOneNotAffectedByReset;
    flexioTimer.timdec      = kFlexioTimerDecSrcOnPinInputShiftPinInput;
    flexioTimer.timrst      = kFlexioTimerResetOnTimerTriggerRisingEdge;
    flexioTimer.timdis      = kFlexioTimerDisableOnTimerCompare;
    flexioTimer.timena      = kFlexioTimerEnableOnTriggerRisingEdge;
    flexioTimer.tstop       = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart      = kFlexioTimerStartBitDisabled;
    status = FLEXIO_LCD_HAL_GetVOETimerCompare(devPtr, &flexioTimer.timcmp);
    if(status != kStatus_FLEXIO_Success)
        return status;
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVOETimer), &flexioTimer);
    
    /* Vertical Output Enable Pin Timer Configuration
     * This timer is used to output the Vertical Output Enable signal on a 
     * pin.  It is identical to the Vertical Output Enable timer output, but
     * inverted.  This output pin feeds the logic shifter to generate the final
     * Output Enable signal.
     *  Trigger: Vertical Output Enable timer, active high
     *  Pin: Output but only used internally, active low
     *  Mode: 16-bit counter
     *  Decrements: on the Vertical Output Enable timer
     *  Enabled: always, never resets
     *  Compare Value: 0, forces output to toggle with every trigger */
    /* Trigger. */
    flexioTimer.trgsel = FLEXIO_HAL_TIMER_TRIGGER_SEL_TIMn( \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVOETimer));
    flexioTimer.trgpol = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg = kFlexioPinConfigOutput;
    flexioTimer.pinsel = devPtr->vertOEPinIdx;
    flexioTimer.pinpol = kFlexioPinActiveLow;
    /* Timer. */
    flexioTimer.timod  = kFlexioTimerModeSingle16Bit;
    flexioTimer.timout = kFlexioTimerOutputZeroNotAffectedByReset;
    flexioTimer.timdec = kFlexioTimerDecSrcOnTriggerInputShiftTriggerInput;
    flexioTimer.timrst = kFlexioTimerResetNever;
    flexioTimer.timdis = kFlexioTimerDisableNever;
    flexioTimer.timena = kFlexioTimerEnabledAlways;
    flexioTimer.tstop  = kFlexioTimerStopBitDisabled;
    flexioTimer.tstart = kFlexioTimerStartBitDisabled;
    flexioTimer.timcmp = 0;    
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVOEPin), &flexioTimer);
    
    /* VSYNC Pin Shifter Configuration
     * This shifter drives the VSYNC output to the LCD.  It is controlled by the
     * Vertical Output Enable timer, and shifts out the VSYNC low pulse when
     * the Output Enable signal is disabled around the VSYNC pulse.
     *  Timer: Vertical Output Enable timer, shift on positive edge
     *  Pin: single pin output, VSYNC, active high
     *  Mode: Transmit, drives output based on vertical timing
     *  Shift Buffer Value: Calculated to drive VSYNC low pulse at proper time
     *    during Output Enable signal disabled around VSYNC pulse */
    /* Timer */
    flexioShifter.timsel = FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerVOETimer);
    flexioShifter.timpol = kFlexioShifterTimerPolarityOnPositive;
    /* Pin */
    flexioShifter.pincfg = kFlexioPinConfigOutput; 
    flexioShifter.pinsel = devPtr->vsyncPinIdx;
    flexioShifter.pinpol = kFlexioPinActiveHigh;
    /* Shifter. */
    flexioShifter.smode  = kFlexioShifterModeTransmit;
    flexioShifter.pwidth = 0;      // Single bit, not parallel
    flexioShifter.insrc  = kFlexioShifterInputFromPin;
    flexioShifter.sstop  = kFlexioShifterStopBitDisable;
    flexioShifter.sstart = kFlexioShifterStartBitDisabledLoadDataOnEnable;
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterVSYNC), &flexioShifter);
    FLEXIO_LCD_HAL_SetVSYNCPinShiftBuffer(devPtr, kFlexioLCDShifterVSYNC);
    
    
    /* OE Pin Shifter Configuration
     * This shifter uses logic mode to drive the final Output Enable signal to
     * the LCD.  The inputs to the logic are the Horizontal and Vertical 
     * components of the Output Enable.  These two signals are routed internally
     * using FlexIO pins, but are not brought out of the MCU.  The shifter
     * logically ANDs these two signals, creating the final Output Enable signal.
     *  Timer: Pixel clock timer, shift on positive edge
     *  Pin: in logic mode, the output pin is fixed.  The FlexIO pin used is 
     *    based on the shifter number used, active high
     *  Mode: Logic
     *  Start/Start: these bits are used to mask the unused inputs to the 
     *    shifter logic.
     *  Shift Buffer Value: Logic look-up table */
    /* Timer */
    flexioShifter.timsel = FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerPCLK);
    flexioShifter.timpol = kFlexioShifterTimerPolarityOnPositive;
    /* Pin */
    flexioShifter.pincfg = kFlexioPinConfigOutput;
    flexioShifter.pinsel = 0;      // When logic mode is used, output pin is fixed
    flexioShifter.pinpol = kFlexioPinActiveHigh;
    /* Shifter. */
    flexioShifter.smode  = kFlexioShifterModeLogic;
    flexioShifter.pwidth = 31;      // minimize shifter delay to logic lookup table
    flexioShifter.insrc  = kFlexioShifterInputFromPin;     // Not used
    FLEXIO_LCD_HAL_SetShifterLogicInputMask(devPtr, &flexioShifter.sstop, \
        &flexioShifter.sstart);
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterOEPin), &flexioShifter);
    /* Write Logic Table to Shift Buffer */
    FLEXIO_HAL_SetShifterBuffer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterOEPin), \
      devPtr->oeLogicTable);

    /* Data Timer Configuration
     * This timer controls the pixel data shifters, and is enabled by the
     * Output Enable pin.  It will only shift when Output Enable is high.  It is
     * clocked from the Pixel Clock pin.
     *  Trigger: Output Enable pin, active high
     *  Pin: input, Pixel Clock, active high
     *  Mode: Dual 8bit Baud/Bit
     *  Decrements: on Pixel Clock
     *  Enabled: when Output Enable pin is high, also resets counter on rising edge
     *  Start Bit: enabled to prevent loading next pixel group on timer disable
     *  Stop bit: Enabled on timer disabled to compensate for extra start bit
     *  Compare Value: Calculated to shift on each rising edge of Pixel Clock, 
     *    and number of shifts based on number of shifters used for pixel data */
    /* Trigger. */
    flexioTimer.trgsel      = FLEXIO_HAL_TIMER_TRIGGER_SEL_PININPUT(devPtr->oePinIdx);
    flexioTimer.trgpol      = kFlexioTimerTriggerPolarityActiveHigh;
    flexioTimer.trgsrc      = kFlexioTimerTriggerSourceInternal;
    /* Pin. */
    flexioTimer.pincfg      = kFlexioPinConfigOutputDisabled;
    flexioTimer.pinsel      = devPtr->pclkPinIdx;
    flexioTimer.pinpol      = kFlexioPinActiveHigh;
    /* Timer. */
    flexioTimer.timod       = kFlexioTimerModeDual8BitBaudBit;
    flexioTimer.timout      = kFlexioTimerOutputZeroNotAffectedByReset;
    flexioTimer.timdec      = kFlexioTimerDecSrcOnPinInputShiftPinInput;
    flexioTimer.timrst      = kFlexioTimerResetOnTimerTriggerRisingEdge;
    flexioTimer.timdis      = kFlexioTimerDisableOnTriggerFallingEdge;
    flexioTimer.timena      = kFlexioTimerEnableOnTriggerRisingEdge;
    flexioTimer.tstop       = kFlexioTimerStopBitEnableOnTimerDisable;
    flexioTimer.tstart      = kFlexioTimerStartBitEnabled;
    flexioTimer.timcmp      = FLEXIO_LCD_HAL_GetDataTimerCompare(devPtr);    
    FLEXIO_HAL_ConfigureTimer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerData), &flexioTimer);
    
    /* Base Pixel Data Shifter Configuration
     * This shifter is the first in the shifter chain that drives the data pins
     * to the LCD.  The pins are driven from this shifter, and the other data
     * shifters feed this shifter.  It is controlled by the Data timer
     *  Timer: Data timer, shift on positive edge
     *  Pin: Parallel pin outputs for all Pixel Data pins, active high
     *  Mode: Transmit, outputs pixel data from frame buffer to pins
     *  Input Source: Next shifter in chain
     *  Stop Bit: Enabled to compensate for timer extra start bit
     *  Start Bit: Disabled, load shift registers on first shift
     *  Shift Buffer Value: Comes from frame buffer via DMA */
    /* Timer */
    flexioShifter.timsel = FLEXIO_LCD_HAL_GetFlexioTimer(devPtr, kFlexioLCDTimerData);
    flexioShifter.timpol = kFlexioShifterTimerPolarityOnPositive;
    /* Pin */
    flexioShifter.pincfg = kFlexioPinConfigOutput;
    flexioShifter.pinsel = devPtr->datPinStartIdx;
    flexioShifter.pinpol = kFlexioPinActiveHigh;
    /* Shifter. */
    flexioShifter.smode  = kFlexioShifterModeTransmit;
    flexioShifter.pwidth = (devPtr->datPinWidth - 1);
    flexioShifter.insrc  = kFlexioShifterInputFromNextShifterOutput;
    flexioShifter.sstop  = kFlexioShifterStopBitLow;
    flexioShifter.sstart = kFlexioShifterStartBitDisabledLoadDataOnShift;
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterData0), &flexioShifter);
    
    /* Other Pixel Data Shifters Configuration
     * These shifters are all chained together, and feed the base shifter.  The
     * configuration is copied from the base Data shifter, but with the output
     * pins disabled, as the pins are diven by the base shifter.
     *  Timer: Data timer, shift on positive edge
     *  Pin: disabled
     *  Mode: Transmit, outputs pixel data from frame buffer to pins
     *  Input Source: Next shifter in chain
     *  Shift Buffer Value: Comes from frame buffer via DMA */
    flexioShifter.pincfg = kFlexioPinConfigOutputDisabled;
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterData1), &flexioShifter);
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterData2), &flexioShifter);
    FLEXIO_HAL_ConfigureShifter(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, kFlexioLCDShifterData3), &flexioShifter);
    
    /* Clear flags. */
    FLEXIO_HAL_ClearShifterErrorFlags(devPtr->flexioBase, ((1U<<(kFlexioLCDNumOfShifters))-1U)<<(devPtr->shifterStartIdx) );
    FLEXIO_HAL_ClearTimerStatusFlags(devPtr->flexioBase, ((1U<<(kFlexioLCDNumOfTimers))-1U)<<(devPtr->timerStartIdx) );
    
    return kStatus_FLEXIO_Success;
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetTxBufferAddr
 * Description: Get the Tx buffer's address for DMA use.
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetTxBufferAddr(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter)
{
    return (uint32_t)(&(FLEXIO_SHIFTBUF_REG(devPtr->flexioBase, shifter)));
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetFlexioTimer
 * Description: Use Lowest FlexIO timer used by flexio_lcd, and adds timer 
 * offset to get number of FlexIO timer, and returns this value.  
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetFlexioTimer(flexio_lcd_dev_t *devPtr, flexio_lcd_timers_t timer_offset)
{
    return (devPtr->timerStartIdx + timer_offset);
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetPCLKTimerCompare
 * Description: Calculates FlexIO timer compare value for Pixel Clock.
 * Calculates clock divider using FlexIO clock frequency and LCD pixel
 * clock frequency.  Then converts to dual 8-bit compare value for FlexIO
 * PWM mode.
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetPCLKTimerCompare(flexio_lcd_dev_t *devPtr)
{
    uint32_t divider, compare_LSB, compare_MSB, clkFreq;
    
    if(CLOCK_SYS_GetFlexioSrc(devPtr->flexioInstance) == 0)
    {
        /* Workaround issue in KSDK v1.3.0 with FlexIO Clock source */
        clkFreq = CLOCK_SYS_GetSystemClockFreq();
    }
    else
    {
        clkFreq = CLOCK_SYS_GetFlexioFreq(devPtr->flexioInstance);
    }
    
    divider = clkFreq / devPtr->pclkFreq;
    
    /* Since Pixel Clock timer uses Dual 8-bit PWM mode, 
     * split divider into two compare values */
    compare_MSB = (divider >> 1) - 1;           // use smaller half in MSB
    compare_LSB = divider - compare_MSB - 2;    // use larger half in LSB
    
    return ((compare_MSB << 8) | compare_LSB);  // combine into 16-bit 
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetHsyncTimerCompare
 * Description: Calculates FlexIO timer compare value for HSYNC pulse.
 * Converts to dual 8-bit compare value for FlexIO PWM mode.
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetHsyncTimerCompare(flexio_lcd_dev_t *devPtr)
{
    uint32_t compare_LSB, compare_MSB;
    
    /* Compare upper 8-bits is HSYNC front porch, when timer output low */
    compare_MSB = devPtr->hsyncFrontPorch-2;
    
    /* Compare lower 8-bits is HSYNC pulse width, when timer output high */
    compare_LSB = devPtr->hsyncPulseWidth-1;
    
    return ((compare_MSB << 8) | compare_LSB);  // combine into 16-bit 
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetHPeriodTimerCompare
 * Description: Calculates FlexIO timer compare value for Horizontal Period
 * based on horizontal pixels and timing
 *
 *END*********************************************************************/
flexio_status_t FLEXIO_LCD_HAL_GetHPeriodTimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp)
{
    uint32_t    compare;
    
    /* Calculate period of HSYNC pulse in Pixel clock periods*/
    compare = devPtr->pixelsX + devPtr->hsyncFrontPorch \
      + devPtr->hsyncPulseWidth + devPtr->hsyncBackPorch;
    
    /* HPeriod FlexIO Timer decrements on both edges of pixel clock
     * but timcmp will be half the period: high for half, low for half.
     * Timer decrements to 0, need to reduce period by 1 */
    compare--;
    
    /* FlexIO timer compare value is 16-bit.  Check calculated period does not exceed */
    if(compare > 0xFFFF)
        return kStatus_FLEXIO_InvalidArgument;
    else
    {
        *timcmp = compare;
        return kStatus_FLEXIO_Success;
    }
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetHOETimerCompare
 * Description: Calculates FlexIO timer compare value for Horizontal Output 
 * Enable based on HSYNC timing
 *
 *END*********************************************************************/
flexio_status_t FLEXIO_LCD_HAL_GetHOETimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp)
{
    uint32_t compare_LSB, compare_MSB;
    
    /* Horizontal Output Enable Timer will decrement on both edges of pixel
     * clock.  To shift on only rising edge, FlexIO 8-bit counter mode for the
     * timer is used.  The lower byte controls the baud rate for the shifter,
     * which is set to 1 to shift on every other edge */
    compare_LSB = 1;
    
    /* Upper compare byte is calculated based on HSYNC timing */
    compare_MSB = devPtr->hsyncFrontPorch \
      + devPtr->hsyncPulseWidth + devPtr->hsyncBackPorch;
    
    /* FlexIO shifter is 32-bit.  Check calculated compare_MSB does not exceed */
    if(compare_MSB > 32)
        return kStatus_FLEXIO_InvalidArgument;

    /* Timer decrements to 0, need to reduce period by 1 */
    compare_MSB--;
    
    /* Compare compare value bytes into 16-bit value */
    *timcmp = ((compare_MSB << 8) | compare_LSB);
    
    return kStatus_FLEXIO_Success;
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetFlexioShifter
 * Description: Use Lowest FlexIO shfiter used by flexio_lcd, and adds shifter 
 * offset to get number of FlexIO shifter, and returns this value.  
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetFlexioShifter(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset)
{
    return (devPtr->shifterStartIdx + shifter_offset);
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_SetHSYNCPinShiftBuffer
 * Description: Loads FlexIO Shift Buffer with bit pattern based on HSYNC timing.
 * Shifter starts shifting with bit SHIFTBUF[0]. Start loading shift buffer 
 * with last bits to shift, and shift the buffer bits to the left to load 
 * earlier bits.
 *
 *END*********************************************************************/
void FLEXIO_LCD_HAL_SetHSYNCPinShiftBuffer(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset)
{
    uint32_t buffer, i;
    
    buffer = 0;
    
    /* Last bits to shift out are the HSYNC Back Porch, load them first */
    for(i=0; i < devPtr->hsyncBackPorch; i++)
    {
        /* HSYNC Pin is high during back porch */
        buffer = buffer << 1;
        buffer += 1;
    }
    
    /* Middle bits to shift out are the HSYNC Pulse, load them after back porch */
    for(i=0; i < devPtr->hsyncPulseWidth; i++)
    {
        /* HSYNC Pin is low during pulse */
        buffer = buffer << 1;
        buffer += 0;
    }
    
    /* First bits to shift out are the HSYNC Front Porch, load them last */
    for(i=0; i < devPtr->hsyncFrontPorch; i++)
    {
        /* HSYNC Pin is high during front porch */
        buffer = buffer << 1;
        buffer += 1;
    }
    
    /* Write Shift Buffer with HSYNC pulse pattern */
    FLEXIO_HAL_SetShifterBuffer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, shifter_offset), buffer);
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetVPeriodTimerCompare
 * Description: Calculates FlexIO timer compare value for Vertical Period
 * based on horizontal lines per frame and VSYNC timing
 *
 *END*********************************************************************/
flexio_status_t FLEXIO_LCD_HAL_GetVPeriodTimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp)
{
    uint32_t    compare;
    
    /* Calculate period of HSYNC pulse in Pixel clock periods*/
    compare = devPtr->pixelsY + devPtr->vsyncFrontPorch \
      + devPtr->vsyncPulseWidth + devPtr->vsyncBackPorch;
    
    /* VPeriod FlexIO Timer decrements on both edges of HSYNC signal
       but timcmp will be half the period: high for half, low for half.
       Timer decrements to 0, need to reduce period by 1 */
    compare--;
    
    /* FlexIO timer compare value is 16-bit.  Check calculated period does not exceed */
    if(compare > 0xFFFF)
        return kStatus_FLEXIO_InvalidArgument;
    else
    {
        *timcmp = compare;
        return kStatus_FLEXIO_Success;
    }
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetVOETimerCompare
 * Description: Calculates FlexIO timer compare value for Vertical Output 
 * Enable based on VSYNC timing
 *
 *END*********************************************************************/
flexio_status_t FLEXIO_LCD_HAL_GetVOETimerCompare(flexio_lcd_dev_t *devPtr, uint32_t * timcmp)
{
    uint32_t compare;
    
    /* compare value is calculated based on VSYNC timing */
    compare = devPtr->vsyncFrontPorch + devPtr->vsyncPulseWidth + devPtr->vsyncBackPorch;
    
    /* VOE Timer decrements on both edges of HSYNC pin, need to double compare value */
    compare *= 2;
    
    /* FlexIO shifter is 32-bit.  Check calculated compare does not exceed */
    if(compare > 32)
        return kStatus_FLEXIO_InvalidArgument;

    /* Timer decrements to 0, need to reduce period by 1 */
    compare--;
    
    /* Compare compare value bytes into 16-bit value */
    *timcmp = compare;
    
    return kStatus_FLEXIO_Success;
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_SetVSYNCPinShiftBuffer
 * Description: Loads FlexIO Shift Buffer with bit pattern based on VSYNC timing.
 * Shifter starts shifting with bit SHIFTBUF[0]. Start loading shift buffer 
 * with last bits to shift, and shift the buffer bits to the left to load 
 * earlier bits.  Shifter will shift on each HSYNC pulse.
 *
 *END*********************************************************************/
void FLEXIO_LCD_HAL_SetVSYNCPinShiftBuffer(flexio_lcd_dev_t *devPtr, flexio_lcd_shifters_t shifter_offset)
{
    uint32_t buffer, i;
    
    buffer = 0;
    
    /* Last bits to shift out are the VSYNC Back Porch, load them first */
    for(i=0; i < devPtr->vsyncBackPorch; i++)
    {
        /* VSYNC Pin is high during back porch */
        buffer = buffer << 1;
        buffer += 1;
    }
    
    /* Middle bits to shift out are the VSYNC Pulse, load them after back porch */
    for(i=0; i < devPtr->vsyncPulseWidth; i++)
    {
        /* VSYNC Pin is low during pulse */
        buffer = buffer << 1;
        buffer += 0;
    }
    
    /* First bits to shift out are the VSYNC Front Porch, load them last.
     * Increase FrontPorch bits by 1 because of inter-FlexIO syncronization */
    for(i=0; i < devPtr->vsyncFrontPorch+1; i++)
    {
        /* VSYNC Pin is high during front porch */
        buffer = buffer << 1;
        buffer += 1;
    }
    
    /* Write Shift Buffer with VSYNC pulse pattern */
    FLEXIO_HAL_SetShifterBuffer(devPtr->flexioBase, \
      FLEXIO_LCD_HAL_GetFlexioShifter(devPtr, shifter_offset), buffer);
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_SetShifterLogicInputMask
 * Description: Masks unusued FlexIO logic inputs to shifter in Logic mode.
 * Logic Input signals are devPtr->horizOEPinIdx and devPtr->vertOEPinIdx
 * Logic Output signal is devPtr->oePinIdx, which is FXIO_D[x+4]
 *
 * Bits set in these mask bits will ignore inputs on these FlexIO signals:
 * Mask Bits:           SSTOP[1]        SSTOP[0]        SSTART[1]       SSTART[0]
 * Masked Inputs:       FXIO_D[x+3]     FXIO_D[x+2]     FXIO_D[x+1]     FXIO_D[x+0]
 *
 *END*********************************************************************/
void FLEXIO_LCD_HAL_SetShifterLogicInputMask(flexio_lcd_dev_t *devPtr, \
    flexio_shifter_stop_bit_t * sstop, flexio_shifter_start_bit_t * sstart)
{
    flexio_shifter_stop_bit_t temp_stop = (flexio_shifter_stop_bit_t)3U;
    flexio_shifter_start_bit_t temp_start = (flexio_shifter_start_bit_t) 3U;
    uint32_t horizOEPinIdx, vertOEPinIdx, oePinIdx;
    
    horizOEPinIdx = devPtr->horizOEPinIdx;
    vertOEPinIdx = devPtr->vertOEPinIdx;
    oePinIdx = devPtr->oePinIdx;
    
    /* check if FXIO_D[x+3] should be unmasked */
    if((oePinIdx - horizOEPinIdx == 1) || (oePinIdx - vertOEPinIdx == 1))
      temp_stop &= ~(0x2);
    
    /* check if FXIO_D[x+2] should be unmasked */
    if((oePinIdx - horizOEPinIdx == 2) || (oePinIdx - vertOEPinIdx == 2))
      temp_stop &= ~(0x1);
    
    /* check if FXIO_D[x+1] should be unmasked */
    if((oePinIdx - horizOEPinIdx == 3) || (oePinIdx - vertOEPinIdx == 3))
      temp_start &= ~(0x2);
    
    /* check if FXIO_D[x+0] should be unmasked */
    if((oePinIdx - horizOEPinIdx == 4) || (oePinIdx - vertOEPinIdx == 4))
      temp_start &= ~(0x1);
    
    *sstop = temp_stop;
    *sstart = temp_start;
}

/*FUNCTION****************************************************************
 *
 * Function Name: FLEXIO_LCD_HAL_GetDataTimerCompare
 * Description: Calculates FlexIO timer compare value for data timer, used to 
 * control shifters for pixel data.  Uses dual 8-bit counter mode for FlexIO
 * timer.
 *
 *END*********************************************************************/
uint32_t FLEXIO_LCD_HAL_GetDataTimerCompare(flexio_lcd_dev_t *devPtr)
{
    uint32_t compare;
    
    /* In dual 8-bit counter mode for FlexIO timer, the upper 8bits controls
     * the number of shifts per load from shift buffers.  This value is
     * calculated based on the number of data shifters chained together and
     * the number of parallel data pins.  Reduce by one because it counts down
     * to 0. */
    compare = (devPtr->numDataShifters * (32 / devPtr->datPinWidth)) - 1;
    
    /* Shift to upper 8bits for FlexIO Timer Compare register */
    compare = compare << 8;
    
    /* In dual 8-bit counter mode for FlexIO timer, the lower 8bits control
     * the baud rate, or how many timer trigger edges occur per shift.  Since
     * timer is triggered on both edges of pixel clock, this value is set to 1
     * to shift on every rising edge */
    compare += 1;
    
    return compare;    
}

#endif /* FSL_FEATURE_FLEXIO_HAS_PARALLEL_WIDTH */

#endif /* FSL_FEATURE_SOC_FLEXIO_COUNT */

/******************************************************************************
 * EOF
 *****************************************************************************/

