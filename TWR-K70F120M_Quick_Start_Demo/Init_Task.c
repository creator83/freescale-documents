/**************************************************************************
*
* FileName: Init_Task.c
*
* Comments: Initialization Task to kick start all the other tasks and also
*  start the webserver.
*
*  This is the only task with MQX_AUTO_START_TASK attribute set in the
*    MQX_template_list[] found in Tasks.c
*
*
***************************************************************************/
#include "demo.h"
#include "tsi.h"
#include <ipcfg.h>

extern void initialize_networking(void);
void disable_flash_cache();

/* Global Variables */
SENSOR_DATA Sensor;
DEMO_MODE mode;
LWSEM_STRUCT touch_sem;

/*
 * Kick-start all the other tasks used in this demo
 *
 */
void Init_Task(uint_32 data)
{
  printf("\n\nKinetis TWR-K70F120M MQX Demo\n");

  /* Initialize global variables */
  mode=TOUCH; //Default to TSI toggle mode
  _lwsem_create(&touch_sem, 0); //Create semaphore with initial value of 0
                                //used for detecting touches

  /* Setup GPIO */
  InitializeIO(); 

  /* Create Acceletometer Task to read accelerometer data */
  _task_create(0,ACCEL_TASK,0);

  /* Create ADC Task to read POT and Temp Sensor */
  _task_create(0,ADC_TASK,0);

  /* Create Memory Game Task */
  _task_create(0,GAME_TASK,0);

  /* Create Demo Task */
  _task_create(0,DEMO_TASK,0);

  /* Create SDCARD and Shell Tasks to read an SD Card */
  _task_create(0,SDCARD_TASK,0);
  _task_create(0,SHELL_TASK,0);

  /* Create USB Mouse Task */
  _task_create(0,USB_TASK,0);

  /* Initialize unexpected ISR */
  _int_install_unexpected_isr();

  /* Set up networking and web server */
  initialize_networking();

  /* Setup TSI last for initialization */
  TSI_Start();

  /* Block forever since init done */
  _task_block();
}