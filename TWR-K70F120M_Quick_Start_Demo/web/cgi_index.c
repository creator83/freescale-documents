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
* $FileName: cgi_index.c$
* $Version : 3.0.10.0$
* $Date    : Nov-21-2008$
*
* Comments:
*
*   Example of shell using RTCS.
*
*END************************************************************************/

#include "demo.h"
#include "web.h"

extern MQX_FILE_PTR output_port;

#if DEMOCFG_ENABLE_WEBSERVER
#include "html.h"
#include "cgi.h"

#include <string.h>
#include <stdlib.h>

unsigned char led_status=0xF;
extern LWSEM_STRUCT SD_Card;

static void sdcard_status_fn(HTTPD_SESSION_STRUCT *session);

const HTTPD_FN_LINK_STRUCT fn_lnk_tbl[] = {
    { "s_status_fn",  sdcard_status_fn },
    { 0, 0 } // DO NOT REMOVE - last item - end of table
};

//Due to changes between MQX 3.6 and MQX 3.7, the function types in this file need to
//be changed from "_mqx_int" to just "int" to work with MQX 3.6.2
//Then remove the error compile directive in order to finish compiling
#if MQX_VERSION==360
  #error Please replace all instances of "_mqx_int" with "int" by doing a search and replace on this file
#endif

const HTTPD_CGI_LINK_STRUCT cgi_lnk_tbl[] = {
  { "accel_data",   cgi_accelerometer_data},
  { "rtcdata",      cgi_rtc_data},
  { "board_status", cgi_board_status},
  { "game_status",  cgi_game_status},
  { "toggleled1",     cgi_toggle_led1},
  { "toggleled2",     cgi_toggle_led2},
  { "toggleled3",     cgi_toggle_led3},
  { "toggleled4",     cgi_toggle_led4},
  { 0, 0 }    // DO NOT REMOVE - last item - end of table
};


static void sdcard_status_fn(HTTPD_SESSION_STRUCT *session) {
#if BSPCFG_ENABLE_ESDHC
    if (SD_Card.VALUE)
        httpd_sendstr(session->sock, "visible");
    else
#endif
        httpd_sendstr(session->sock, "hidden");
}


static _mqx_int cgi_board_status(HTTPD_SESSION_STRUCT *session)
{
  if(GetInput(SW1_INPUT))
  {
    CGI_SEND_STR("<font color=\"red\">Pressed</font>");
  }
  else
  {
    CGI_SEND_STR("Open");
  }
  if(GetInput(SW2_INPUT))
  {
    CGI_SEND_STR("<font color=\"red\">Pressed</font>");
  }
  else
  {
    CGI_SEND_STR("Open");
  }

  if(GetOutput(LED1))
  {
    CGI_SEND_STR("<font color=\"red\">on</font>");
  }
  else
  {
    CGI_SEND_STR("off");
  }
  if(GetOutput(LED2))
  {
    CGI_SEND_STR("<font color=\"red\">on</font>");
  }
  else
  {
    CGI_SEND_STR("off");
  }
  if(GetOutput(LED3))
  {
    CGI_SEND_STR("<font color=\"red\">on</font>");
  }
  else
  {
    CGI_SEND_STR("off");
  }
  if(GetOutput(LED4))
  {
    CGI_SEND_STR("<font color=\"red\">on</font>");
  }
  else
  {
    CGI_SEND_STR("off");
  }

  CGI_SEND_NUM(Sensor.temp_int);
  CGI_SEND_NUM(Sensor.temp_dec);
  CGI_SEND_NUM(Sensor.pot);
  return session->request.content_len;
}

static _mqx_int cgi_game_status(HTTPD_SESSION_STRUCT *session) {
    TIME_STRUCT time;
    DATE_STRUCT date;

    _time_get(&time);
    _time_to_date(&time,&date);

    if(mode==GAME)
    {
      CGI_SEND_STR("On");
    }
    else
    {
      CGI_SEND_STR("Off");
    }
    CGI_SEND_NUM(current_score);
    CGI_SEND_NUM(high_score);
    return session->request.content_len;
}

static _mqx_int cgi_rtc_data(HTTPD_SESSION_STRUCT *session) {
    TIME_STRUCT time;
    DATE_STRUCT date;

    _time_get(&time);
    _time_to_date(&time,&date);

    CGI_SEND_NUM(date.HOUR);
    CGI_SEND_NUM(date.MINUTE);
    CGI_SEND_NUM(date.SECOND);

    return session->request.content_len;
}

static _mqx_int cgi_accelerometer_data(HTTPD_SESSION_STRUCT *session)
{
	uint_8 status=Sensor.accel_status;

	//Front/Back Position
	if((status&0x01)==0x01)
	{
          CGI_SEND_STR("Back");
	}
	else
	{
          CGI_SEND_STR("Front");
	}

	//Orientation
	status=status&0x06;

	if(status==0x00)
	{
		CGI_SEND_STR("Up");
	}
	else if(status==0x02)
	{
		CGI_SEND_STR("Down");
	}
	else if(status==0x04)
	{
		CGI_SEND_STR("Right");
	}
	else if(status==0x06)
	{
		CGI_SEND_STR("Left");
	}
	else
	{
		CGI_SEND_STR("Unknown");
	}


	CGI_SEND_NUM(Sensor.accel_x);     //x-axis
	CGI_SEND_NUM(Sensor.accel_y);     //y-axis
	CGI_SEND_NUM(Sensor.accel_z);     //z-axis

	return session->request.content_len;
}


_mqx_int cgi_toggle_led1(HTTPD_SESSION_STRUCT *session)
{
  SetOutput(LED1,!GetOutput(LED1));
  return session->request.content_len;
}

_mqx_int cgi_toggle_led2(HTTPD_SESSION_STRUCT *session)
{
  SetOutput(LED2,!GetOutput(LED2));
  return session->request.content_len;
}

_mqx_int cgi_toggle_led3(HTTPD_SESSION_STRUCT *session)
{
  SetOutput(LED3,!GetOutput(LED3));
  return session->request.content_len;
}

_mqx_int cgi_toggle_led4(HTTPD_SESSION_STRUCT *session)
{
  SetOutput(LED4,!GetOutput(LED4));
  return session->request.content_len;
}

#endif
