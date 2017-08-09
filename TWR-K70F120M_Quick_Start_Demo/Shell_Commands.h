#ifndef __sh_hvac_h__
#define __sh_hvac_h__

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
* $FileName: Shell_Commands.h$
* $Version : 3.0.3.0$
* $Date    : Nov-21-2008$
*
* Comments:
*
*
*
*END************************************************************************/



extern int_32 Shell_set_time(int_32 argc, char_ptr argv[] );
extern int_32  Shell_print_accel(int_32 argc, char_ptr argv[] );

void print_usage_settime (boolean shorthelp, const char_ptr argv, const char_ptr longhelp);
void print_usage_accel(boolean shorthelp, const char_ptr argv, const char_ptr longhelp);

#endif

/* EOF*/