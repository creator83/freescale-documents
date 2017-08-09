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
* $FileName: cgi.h$
* $Version : 3.5.7.0$
* $Date    : Nov-26-2009$
*
* Comments:
*
*
*
*END************************************************************************/

#ifndef _cgi_h_
#define _cgi_h_

//MQX 3.6 requires an INT type for CGI functions. MQX 3.7 requires
//_mqx_int. Check to see which version of MQX is being used.
#if MQX_VERSION==360
int cgi_accelerometer_data(HTTPD_SESSION_STRUCT *session);
int cgi_rtc_data(HTTPD_SESSION_STRUCT *session);
int cgi_board_status(HTTPD_SESSION_STRUCT *session);
int cgi_game_status(HTTPD_SESSION_STRUCT *session);

int cgi_toggle_led1(HTTPD_SESSION_STRUCT *session);
int cgi_toggle_led2(HTTPD_SESSION_STRUCT *session);
int cgi_toggle_led3(HTTPD_SESSION_STRUCT *session);
int cgi_toggle_led4(HTTPD_SESSION_STRUCT *session);
#else
_mqx_int cgi_accelerometer_data(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_rtc_data(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_board_status(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_game_status(HTTPD_SESSION_STRUCT *session);

_mqx_int cgi_toggle_led1(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_toggle_led2(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_toggle_led3(HTTPD_SESSION_STRUCT *session);
_mqx_int cgi_toggle_led4(HTTPD_SESSION_STRUCT *session);
#endif

#define CGI_SEND_NUM(val)				\
{										\
	char str[20], *pstr;						\
	pstr = &str[0]; \
        sprintf(pstr, "%ld\n", val);		\
	httpd_sendstr(session->sock, str);	\
}

#define CGI_SEND_STR(val)				\
{										\
	httpd_sendstr(session->sock, val);	\
	httpd_sendstr(session->sock, "\n");	\
}


#endif
