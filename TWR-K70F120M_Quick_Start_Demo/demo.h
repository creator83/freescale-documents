#ifndef _demo_h_
#define _demo_h_
/**HEADER********************************************************************
*
* Copyright (c) 2008 Freescale Semiconductor;
* All Rights Reserved
*
* Copyright (c) 2004-2008 Embedded Access Inc.;
* All Rights Reserved
*
***************************************************************************
*
* THIS SOFTWARE IS PROVIDED BY FREESCALE "AS IS" AND ANY EXPRESSED OR
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL FREESCALE OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
* INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
* HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
* STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
* IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*
**************************************************************************
*
* $FileName: demo.h$
* $Version : 3.5.21.0$
* $Date    : Dec-2-2009$
*
* Comments:
*   The main configuration file for WEB_HVAC demo
*
*END************************************************************************/

#include <mqx.h>
#include <bsp.h>
#include <lwevent.h>
#include "DemoIO.h"

//Task Numbers
#define INIT_TASK 1
#define ADC_TASK 2
#define ACCEL_TASK 3
#define SHELL_TASK 4
#define SDCARD_TASK 5
#define USB_TASK 6
#define GAME_TASK 7
#define DEMO_TASK 8

#define DEMO_DATA 0x000FF000

/* Sensor Struct */
typedef struct
{
  int_8 accel_x;
  int_8 accel_y;
  int_8 accel_z;
  uint_8 accel_status;
  int_8 pot;
  int_8 temp_int;
  int_8 temp_dec;
} SENSOR_DATA;

/* Mode enum */
typedef volatile enum {
   TOUCH=0,
   TILT,
   GAME,
   MAX_MODES
} DEMO_MODE;

/* Global Variables */
extern SENSOR_DATA Sensor;
extern DEMO_MODE mode;
extern LWSEM_STRUCT touch_sem;
extern char print_accel;
extern unsigned char current_score;
extern unsigned char high_score;

/* Prototype for Tasks */
void Init_Task(uint_32);
void Accel_Task(uint_32);
void ADC_Task();
void shell_task(uint_32);
void sdcard_task(uint_32);
void usb_task(uint_32);
void Game_Task(uint_32);
void Demo_Task(uint_32);

/* Functions */
void write_demo_data();

#endif
