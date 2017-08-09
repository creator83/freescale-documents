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
* $FileName: Shell_Commands.c$
* $Version : 3.6.9.0$
* $Date    : Jun-4-2010$
*
* Comments: Special commands created for demo
*
*
*
*END************************************************************************/


#include "demo.h"
#include <string.h>
#include <shell.h>
#include "Shell_Commands.h"



/*FUNCTION*-------------------------------------------------------------------
*
* Function Name    :   Shell_set_time
* Returned Value   :  int_32 error code
* Comments  :  Sets Time
*
*END*---------------------------------------------------------------------*/

int_32  Shell_set_time(int_32 argc, char_ptr argv[] )
{
  boolean           print_usage, shorthelp = FALSE;
  int_32            return_code = SHELL_EXIT_SUCCESS;
  TIME_STRUCT time;
  DATE_STRUCT date;
  int minute, hour;

   print_usage = Shell_check_help_request(argc, argv, &shorthelp );

   if (!print_usage)
   {
      if (argc !=2 )
      {
         printf("Error, invalid number of parameters\n");
         return_code = SHELL_EXIT_ERROR;
         print_usage=TRUE;
      }
      else
      {
        if(argv[1][5]!='\0')
        {
          printf("Invalid Argument. Input should be HH:MM\n");
        }
        else
        {
          _time_get(&time);
          _time_to_date(&time,&date);
          hour=(argv[1][0]-0x30)*10 + (argv[1][1]-0x30);
          minute=(argv[1][3]-0x30)*10 + (argv[1][4]-0x30);
          if(hour>=24 || minute>=60)
          {
            printf("Invalid Argument. Input should be HH:MM\n");
          }
          else
          {
            date.HOUR=hour;
            date.MINUTE=minute;
            _time_from_date(&date,&time);
            _time_set(&time);
            _rtc_sync_with_mqx(FALSE);
          }
        }
      }
   }

   if (print_usage)  {
      print_usage_settime (shorthelp, argv[0], "<mode> - Select \"start\" or \"stop\"");
   }
   return return_code;
}

static void print_usage_settime (boolean shorthelp, const char_ptr argv, const char_ptr longhelp)
{
  if (shorthelp)  {
    printf("%s <HH:MM>\n", argv);
  } else  {
    printf("Usage: %s <HH:MM>\n", argv);
    printf("   %s\n", longhelp);
  }
}

/*FUNCTION*-------------------------------------------------------------------
*
* Function Name    :   Shell_set_time
* Returned Value   :  int_32 error code
* Comments  :  Sets Time
*
*END*---------------------------------------------------------------------*/

int_32  Shell_print_accel(int_32 argc, char_ptr argv[] )
{
   boolean           print_usage, shorthelp = FALSE;
   int_32            return_code = SHELL_EXIT_SUCCESS;

   print_usage = Shell_check_help_request(argc, argv, &shorthelp );

   if (!print_usage)
   {
      if (argc !=2 )
      {
         printf("Error, invalid number of parameters\n");
         return_code = SHELL_EXIT_ERROR;
         print_usage=TRUE;
      }
      else
      {
        if (strcmp(argv[1],"start")==0)
        {
          printf("Press either push button or type \"accel stop\" to stop\n");
          printf(" X   Y    Z\n");
          print_accel=1;
        }
        else if (strcmp(argv[1],"stop")==0)
        {
          print_accel=0;
          printf("\n\n");
        }
        else
          printf("Invalid Argument. Should be \"start\" or \"stop\"\n");
      }
   }

   if (print_usage)  {
      print_usage_accel(shorthelp, argv[0], "<mode> - Select \"start\" or \"stop\" to print out accelerometer data");
   }
   return return_code;
}

void print_usage_accel(boolean shorthelp, const char_ptr argv, const char_ptr longhelp)
{
  if (shorthelp)  {
    printf("%s <mode>\n", argv);
  } else  {
    printf("Usage: %s <mode>\n", argv);
    printf("   %s\n", longhelp);
  }
}

/* EOF*/