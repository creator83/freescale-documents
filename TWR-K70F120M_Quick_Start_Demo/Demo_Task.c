/**************************************************************************
*
* FileName: Demo_Task.c
*
* Comments: Controls the demo modes
*
*
***************************************************************************/

#include "demo.h"


/*
 * Task for running the demo
 */
void Demo_Task(uint_32 data)
{
  printf("Starting the Demo Task\n");
  /*
   * Run the demo
   */
  while (TRUE)
  {
    /*
     * Determine if should go into TILT mode based on how much tilted and if
     *  in GAME mode or not. In tilt mode, the tilt function will overwrite TSI touches
     */
    if((Sensor.accel_y>14 || Sensor.accel_y<-14) && mode!=GAME)
    {
      mode=TILT;
    }

    //If in TILT mode, turn on/off LED's based on how far tilted
    if(mode==TILT)
    {
      //If level again, go back to TOUCH mode
      if(Sensor.accel_y<=14 && Sensor.accel_y>=-14)
      {
        mode=TOUCH;
        //Set all outputs to on
        OutputAllOn();
      }

      /* Turn on LED's based on how far tilted */
      if(Sensor.accel_y<-52)
        TiltOutput(0x0);
      else if(Sensor.accel_y<-40)
        TiltOutput(0x1);
      else if(Sensor.accel_y<-28)
        TiltOutput(0x3);
      else if(Sensor.accel_y<-14)
        TiltOutput(0x7);

      else if(Sensor.accel_y>52)
        TiltOutput(0x0);
      else if(Sensor.accel_y>40)
        TiltOutput(0x8);
      else if(Sensor.accel_y>28)
        TiltOutput(0xC);
      else if(Sensor.accel_y>14)
        TiltOutput(0xE);
    }

    //Time delay
     _time_delay(300);
   }
}
