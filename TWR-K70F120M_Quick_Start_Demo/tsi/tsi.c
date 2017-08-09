/**************************************************************************
*
* FileName: TSI_Task.c
*
* Comments: Uses TSI driver to read touch pad presses
*
*
***************************************************************************/


#include "demo.h"
#include "tsi.h"

uint_32 lGENCS1, lGENCS2;

uint_16  g16ElectrodeTouch[16] = {0};
uint_16  g16ElectrodeBaseline[16] = {0};
uint_32  g32DebounceCounter[16] = {DBOUNCE_COUNTS};
/*
 * Functions for setting up the touch pads
 *
 */

void TSI_Start()
{
    TSI_Init();
    TSI_SelfCalibration();
    
    START_SCANNING;
    ENABLE_EOS_INT;
    ENABLE_TSI;
}





/********************************************************************************
 *   TSI_Init: Initializes TSI module
 * Notes:
 *    -
 ********************************************************************************/
void TSI_Init(void)
{
    SIM_SCGC5 |= (SIM_SCGC5_TSI_MASK); //Turn on clock to TSI module
    PORTA_PCR4 = PORT_PCR_MUX(0);      //Enable ALT0 for portA4

    lGENCS1 = TSI0_GENCS;
    TSI0_GENCS |= TSI_GENCS_EOSF_MASK;
    lGENCS2 = TSI0_GENCS;
    
    TSI0_GENCS |= ((TSI_GENCS_NSCN(10))|(TSI_GENCS_PS(4))|(TSI_GENCS_STPE_MASK)|
                   (TSI_GENCS_LPSCNITV(7)));
    TSI0_SCANC |= ((TSI_SCANC_EXTCHRG(8))|
                  (TSI_SCANC_REFCHRG(15))|
                  (TSI_SCANC_SMOD(10))|
                  (TSI_SCANC_AMPSC(1))|
                  (TSI_SCANC_AMCLKS(0)));

    //TSI0_GENCS |= TSI_GENCS_LPCLKS_MASK;
    
    ELECTRODE_ENABLE_REG = ELECTRODE0_EN_MASK|ELECTRODE1_EN_MASK|ELECTRODE2_EN_MASK|ELECTRODE3_EN_MASK;
    TSI0_PEN |= TSI_PEN_LPSP(9);
    TSI0_GENCS |= (TSI_GENCS_TSIEN_MASK);  //Enables TSI
      
    /* Init TSI interrupts */
    _int_install_isr(INT_TSI0, TSI_isr, NULL);
    _cortex_int_init(INT_TSI0, 4, TRUE);
    //enable_irq(83);  //TSI Vector is 99. IRQ# is 99-16=83
}



/********************************************************************************
 *   TSI_SelfCalibration: Simple auto calibration version
 * Notes:
 *    - Very simple, only sums a prefixed amount to the current baseline
 ********************************************************************************/
void TSI_SelfCalibration(void)
{
  TSI0_GENCS |= TSI_GENCS_SWTS_MASK;

  while(!TSI0_GENCS&TSI_GENCS_EOSF_MASK){};
  //while(TSI0_GENCS&TSI_GENCS_SCNIP_MASK){};

  _time_delay(200);
  
  g16ElectrodeBaseline[ELECTRODE0] = ELECTRODE0_COUNT;
  g16ElectrodeTouch[ELECTRODE0] = g16ElectrodeBaseline[ELECTRODE0] + ELECTRODE0_TOUCH;
  

  g16ElectrodeBaseline[ELECTRODE1] = ELECTRODE1_COUNT;
  g16ElectrodeTouch[ELECTRODE1] = g16ElectrodeBaseline[ELECTRODE1] + ELECTRODE1_TOUCH;

  
  g16ElectrodeBaseline[ELECTRODE2] = ELECTRODE2_COUNT;
  g16ElectrodeTouch[ELECTRODE2] = g16ElectrodeBaseline[ELECTRODE2] + ELECTRODE2_TOUCH;

  
  g16ElectrodeBaseline[ELECTRODE3] = ELECTRODE3_COUNT;
  g16ElectrodeTouch[ELECTRODE3] = g16ElectrodeBaseline[ELECTRODE3] + ELECTRODE3_TOUCH;
  ELECTRODE0_OUTRG = (uint_32)g16ElectrodeTouch[ELECTRODE3];


  DISABLE_TSI;

}


/********************************************************************************
 *   TSI_isr: TSI interrupt subroutine
 * Notes:
 *    -
 ********************************************************************************/
uint_32 GENCSInt1, GENCSInt2;

void TSI_isr(pointer isr)
{
  static uint_16 TouchEvent = 0;
  uint_16 lValidTouch = 0;
  uint_16 l16Counter;

  GENCSInt1 = TSI0_GENCS;
  
  TSI0_GENCS |= TSI_GENCS_OUTRGF_MASK;
  TSI0_GENCS |= TSI_GENCS_EOSF_MASK;

  GENCSInt2 = TSI0_GENCS;


  /* Process electrode 0 */
  l16Counter = ELECTRODE0_COUNT;
  if(l16Counter>g16ElectrodeTouch[ELECTRODE0]) //See if detected a touch
  {
    TouchEvent |= (1<<ELECTRODE0); //Set touch event variable
    g32DebounceCounter[ELECTRODE0]--; //Decrement debounce counter
    if(!g32DebounceCounter[ELECTRODE0]) //If debounce counter reaches 0....
    {
      _lwsem_post(&touch_sem);
      keypressed |= ((1<<ELECTRODE0)); //Signal that a valid touch has been detected
      lValidTouch |= ((1<<ELECTRODE0)); //Signal that a valid touch has been detected
      TouchEvent &= ~(1<<ELECTRODE0);  //Clear touch event variable
    }
  }
  else
  {
    keypressed &= ~((1<<ELECTRODE0)); //Clear valid touch
    TouchEvent &= ~(1<<ELECTRODE0); //Clear touch event variable
    g32DebounceCounter[ELECTRODE0] = DBOUNCE_COUNTS; //Reset debounce counter
  }
  /***********************/

  /* Process electrode 1 */
  l16Counter = ELECTRODE1_COUNT;
  if(l16Counter>g16ElectrodeTouch[ELECTRODE1])
  {
    TouchEvent |= (1<<ELECTRODE1);
    g32DebounceCounter[ELECTRODE1]--;
    if(!g32DebounceCounter[ELECTRODE1])
    {
      _lwsem_post(&touch_sem);
      keypressed |= ((1<<ELECTRODE1));
      lValidTouch |= ((1<<ELECTRODE1));
      TouchEvent &= ~(1<<ELECTRODE1);
    }
  }
  else
  {
    keypressed&= ~((1<<ELECTRODE1)); //Clear valid touch
    TouchEvent &= ~(1<<ELECTRODE1);
    g32DebounceCounter[ELECTRODE1] = DBOUNCE_COUNTS;
  }
  /***********************/

  /* Process electrode 2 */
  l16Counter = ELECTRODE2_COUNT;
  if(l16Counter>g16ElectrodeTouch[ELECTRODE2])
  {
    TouchEvent |= (1<<ELECTRODE2);
    g32DebounceCounter[ELECTRODE2]--;
    if(!g32DebounceCounter[ELECTRODE2])
    {
      _lwsem_post(&touch_sem);
      keypressed |= ((1<<ELECTRODE2));
      lValidTouch |= ((1<<ELECTRODE2));
      TouchEvent &= ~(1<<ELECTRODE2);
    }
  }
  else
  {
    keypressed &= ~((1<<ELECTRODE2)); //Clear valid touch
    TouchEvent &= ~(1<<ELECTRODE2);
    g32DebounceCounter[ELECTRODE2] = DBOUNCE_COUNTS;
  }
  /***********************/

  /* Process electrode 3 */
  l16Counter = ELECTRODE3_COUNT;
  if(l16Counter>g16ElectrodeTouch[ELECTRODE3])
  {
    TouchEvent |= (1<<ELECTRODE3);
    g32DebounceCounter[ELECTRODE3]--;
    if(!g32DebounceCounter[ELECTRODE3])
    {
      _lwsem_post(&touch_sem);
      keypressed |= ((1<<ELECTRODE3));
      lValidTouch |= ((1<<ELECTRODE3));
      TouchEvent &= ~(1<<ELECTRODE3);
    }
  }
  else
  {
    keypressed &= ~((1<<ELECTRODE3)); //Clear valid touch
    TouchEvent &= ~(1<<ELECTRODE3);
    g32DebounceCounter[ELECTRODE3] = DBOUNCE_COUNTS;
  }
  /***********************/

  if(lValidTouch&((1<<ELECTRODE0))) //If detected a valid touch...
  {
    if(mode==TOUCH)
    {
      SetOutput(LED1,!GetOutput(LED1));
    }
    if(mode==GAME)
    {
      AddTouch(LED1);
    }
    lValidTouch &= ~((1<<ELECTRODE0)); //Clear valid touch
  }
  if(lValidTouch&((1<<ELECTRODE1)))
  {
    if(mode==TOUCH)
    {
      SetOutput(LED2,!GetOutput(LED2));
    }
    if(mode==GAME)
    {
      AddTouch(LED2);
    }
    lValidTouch &= ~((1<<ELECTRODE1));
  }
  if(lValidTouch&((1<<ELECTRODE2)))
  {
    if(mode==TOUCH)
    {
      SetOutput(LED3,!GetOutput(LED3));
    }
    if(mode==GAME)
    {
      AddTouch(LED3);
    }
    lValidTouch &= ~((1<<ELECTRODE2));
  }
  if(lValidTouch&((1<<ELECTRODE3)))
  {
    if(mode==TOUCH)
    {
      SetOutput(LED4,!GetOutput(LED4));
    }
    if(mode==GAME)
    {
      AddTouch(LED4);
    }
    lValidTouch &= ~((1<<ELECTRODE3));
  }
}

