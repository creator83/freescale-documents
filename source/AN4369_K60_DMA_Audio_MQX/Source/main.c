/**HEADER********************************************************************
* 
* Copyright (c) 2008 Freescale Semiconductor;
* All Rights Reserved                       
*
* Copyright (c) 1989-2008 ARC International;
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
* @file      main.c
*
* @version   1.0.0.0
*
* @date      Jun-11-2010
*
* @author    b01800
*
* @brief     This file contains the source for the DMA audio playing demo.
*  
*****************************************************************************/


#include <mqx.h>
#include <bsp.h>
#include <event.h>

#include "audio_dma.h"
#include "wav_record.h"

/* Task IDs */
#define MAIN_TASK 1  

extern void main_task(uint_32); // task function

const TASK_TEMPLATE_STRUCT  MQX_template_list[] = 
{ 
   /* Task Index,Function,Stack,Priority, Name, Attributes,Param,Time Slice */
    { MAIN_TASK,   main_task, 1000,   9,"Main",  MQX_AUTO_START_TASK, 0,     0 },
    {0,           0,           0,     0,   0,      0,                 }
};


unsigned long wav_record_size;

// MQX events
pointer  event_dma_rdy;

/***************************************************************************//*!
*
* @task     main_task 
*
* @brief    Swap the playback buffers and signal the app one of them is free 
* 		        
****************************************************************************/
void main_task(uint_32 initial_data)

{
   
 signed short * p_buf;
 unsigned int i, buf_pos;
  
  // get the length of the input buffer
  wav_record_size = (unsigned long) (sizeof(wav_record_file)/sizeof(signed short));
  signed short * pSample;

  
  // DMA0 transfer complete IRQ Event
  _event_create("event.audio.rdy");
  _event_open("event.audio.rdy", &event_dma_rdy);
  
  
  //AudioCard_Init();

  // Init BUffers, DMA and PWM timer
  Init_Audio();
  
  //----------------------- Main playing loop ----------------------------------
  while(1)   
  {
    
   if(buf_pos > 0) // skip waiting when the buffers empty
   {
    // Wait for DMA ready for another buffer
    _event_wait_all(event_dma_rdy, 0x01, 0);
    _event_clear(event_dma_rdy, 0x01);
   }
   
   // if DMA0 reads buff A, reload B by CPU  
    if(TRUE == Playing_Buff_A)  
            p_buf = &Audio_Source_Blk_B[0];
    
  // if DMA0 reads buff B, reload A by CPU          
    else                
            p_buf = &Audio_Source_Blk_A[0];
    
  // move pointer in audio source buffer
    pSample = (signed short *) wav_record_file + buf_pos;
    
  // rescale for 16-bit PWM and copy to unused DMA Source Audio buffer A or B
  // convert signed 16-bit values to unsigned for PWM duty
#if (AUDIO_DMA_OUTPUT == USE_PWM)
    
    for(i=0; i < AUDIO_SIZE; i++)
    {
      *p_buf++ = (uint16_t)(((signed short)pSample[i]+32768))>>4;
    }

#elif (AUDIO_DMA_OUTPUT == USE_I2S)
   
    for(i=0; i < AUDIO_SIZE; i++)
    {
      *p_buf++ = (signed short)(((pSample[i])-32768));
    }
    
#elif (AUDIO_DMA_OUTPUT == USE_DAC)
    
    for(i=0; i < AUDIO_SIZE; i++)
    {
      *p_buf++ = (unsigned short)(((pSample[i])+32768))>>4;
    }
    
#endif
    
    if(buf_pos == 0)
     {
      Start_Audio(); 
     }
    
    // rewind the pointer to the begining of the record
    buf_pos = buf_pos + AUDIO_SIZE;
    if(buf_pos > wav_record_size){
      buf_pos=0;
      Stop_Audio(); 
    }
  
    //_time_delay(50); // suspend task for 50ms - to allow time for different tasks
  }
  //----------------------------------------------------------------------------
  
}

/* EOF */
