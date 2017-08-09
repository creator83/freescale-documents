#include "demo.h"
#include <io_gpio.h>
#include "DemoIO.h"

boolean OutputState[MAX_OUTPUTS];

LWGPIO_STRUCT led1,led2,led3,led4, btn1, btn2;

void irq_callback(pointer);

/* IRQ ISR called when push button is pressed */
static void irq_callback(void *pin)
{
  lwgpio_int_clear_flag((LWGPIO_STRUCT_PTR) pin);  
  
  //Stop accelerometer output as read in Accel_Task
  print_accel=0;

  //If SW1 is pressed, go into touch mode
  if(GetInput(SW1_INPUT))
  {
    mode=TOUCH;
    OutputAllOn();
    _lwsem_post(&touch_sem);  //Post touch semaphore to end input waiting in Game_Task
  }

  //If SW2 is pressed, go into game mode
  if(GetInput(SW2_INPUT))
  {
    mode=GAME;
    OutputAllOff();
  }
}

/*
 * Initialize GPIO for LED's and push buttons
 * This is also where you can set up more external GPIO
 */
void InitializeIO(void)
{
  /* Init LED's */
  lwgpio_init(&led1, BSP_LED1, LWGPIO_DIR_OUTPUT, LWGPIO_VALUE_NOCHANGE);
  lwgpio_init(&led2, BSP_LED2, LWGPIO_DIR_OUTPUT, LWGPIO_VALUE_NOCHANGE);
  lwgpio_init(&led3, BSP_LED3, LWGPIO_DIR_OUTPUT, LWGPIO_VALUE_NOCHANGE);
  lwgpio_init(&led4, BSP_LED4, LWGPIO_DIR_OUTPUT, LWGPIO_VALUE_NOCHANGE); 
  
  /* Init Buttons */
  lwgpio_init(&btn1, BSP_BUTTON1, LWGPIO_DIR_INPUT, LWGPIO_VALUE_NOCHANGE);     
  lwgpio_init(&btn2, BSP_BUTTON2, LWGPIO_DIR_INPUT, LWGPIO_VALUE_NOCHANGE);  
    
  /* swich pin functionality (MUX) to GPIO mode */
  lwgpio_set_functionality(&led1, BSP_LED1_MUX_GPIO);  
  lwgpio_set_functionality(&led2, BSP_LED2_MUX_GPIO);    
  lwgpio_set_functionality(&led3, BSP_LED3_MUX_GPIO);  
  lwgpio_set_functionality(&led4, BSP_LED4_MUX_GPIO);      
  lwgpio_set_functionality(&btn1, BSP_BUTTON1_MUX_GPIO);
  lwgpio_set_functionality(&btn2, BSP_BUTTON2_MUX_GPIO);  
  
  /* Enable pull-ups on switches */
  lwgpio_set_attribute(&btn1, LWGPIO_ATTR_PULL_UP, LWGPIO_AVAL_ENABLE);  
  lwgpio_set_attribute(&btn2, LWGPIO_ATTR_PULL_UP, LWGPIO_AVAL_ENABLE);   
  

  /* enable gpio functionality for given pin, react on falling edge */
  lwgpio_int_init(&btn1, LWGPIO_INT_MODE_FALLING);
  lwgpio_int_init(&btn2, LWGPIO_INT_MODE_FALLING);  
  
  /* install gpio interrupt service routine */
  _int_install_isr(lwgpio_int_get_vector(&btn1), irq_callback, (void *) &btn1);
  _int_install_isr(lwgpio_int_get_vector(&btn2), irq_callback, (void *) &btn2);    
  /* set the interrupt level, and unmask the interrupt in interrupt controller*/
  _bsp_int_init(lwgpio_int_get_vector(&btn1), 3, 0, TRUE);
  _bsp_int_init(lwgpio_int_get_vector(&btn2), 3, 0, TRUE);    
  /* enable interrupt on GPIO peripheral module*/
  lwgpio_int_enable(&btn1, TRUE);  
  lwgpio_int_enable(&btn2, TRUE);    

  SetOutput(LED1,ON);
  SetOutput(LED2,ON);
  SetOutput(LED3,ON);
  SetOutput(LED4,ON);  
}

/*
 * Turn on and off LED outputs
 */
void SetOutput(Output_t signal, boolean state)
{
  LWGPIO_VALUE pin_state;
  
  if(signal>MAX_OUTPUTS)
  {
    printf("Invalid LED\n");
    return;
  }
  
  //Store state in variable
  OutputState[signal] = state;       
  
  if(state==ON)
  {
    pin_state=LWGPIO_VALUE_LOW;
  }
  else
  {
    pin_state=LWGPIO_VALUE_HIGH;    
  }

  //Set LED on or off based on the state passed to function
  switch (signal)
  {
    case LED1:
      lwgpio_set_value(&led1, pin_state);
      break;
    case LED2:
      lwgpio_set_value(&led2, pin_state);
      break;
    case LED3:
      lwgpio_set_value(&led3, pin_state);
      break;
    case LED4:
      lwgpio_set_value(&led4, pin_state);
      break;
  }
}

/*
 * Get current value of LED by looking at OutputState variable
 */
boolean GetOutput(Output_t signal)
{
  if(signal<MAX_OUTPUTS)
  {
    return OutputState[signal];
  }
  else
  {
    return FALSE;
  }
}

/*
 * Used by Accel_Task, this function turns on
 *  the LED's specified
 *
 * Each bit represents an LED to turn on
 *
 */
void TiltOutput(char signal)
{
  signal&=0xF;

  if(signal & 0x8)
    SetOutput(LED1,ON);
  else
    SetOutput(LED1,OFF);

  if(signal & 0x4)
    SetOutput(LED2,ON);
  else
    SetOutput(LED2,OFF);

  if(signal & 0x2)
    SetOutput(LED3,ON);
  else
    SetOutput(LED3,OFF);

  if(signal & 0x1)
    SetOutput(LED4,ON);
  else
    SetOutput(LED4,OFF);
}


/*
 * Get Input from Push Buttons
 */
boolean GetInput(Input_t signal)
{
   boolean  value=FALSE;

   //Check button state
   switch (signal) {
      case SW1_INPUT:
         value = lwgpio_get_value(&btn1);
         break;
     case SW2_INPUT:
         value = lwgpio_get_value(&btn2);
         break;
   }

   //If button value is high, then it is not pressed
   if(value==LWGPIO_VALUE_HIGH)
   {
     return FALSE;
   }
   else
   {
     return TRUE;
   }
}

/*
 * Toggle LED's on and off the specified number of times
 */
void ToggleAllOutput(int toggles)
{
  int i;
  for(i=0;i<toggles;i++)
  {
    OutputAllOn();
    _time_delay(250);
    OutputAllOff();
    _time_delay(250);
  }
}

/*
 * Turn on all LED's
 */
void OutputAllOn()
{
  SetOutput(LED1,ON);
  SetOutput(LED2,ON);
  SetOutput(LED3,ON);
  SetOutput(LED4,ON);
}

/*
 * Turn off all LED's
 */
void OutputAllOff()
{
  SetOutput(LED1,OFF);
  SetOutput(LED2,OFF);
  SetOutput(LED3,OFF);
  SetOutput(LED4,OFF);	
}