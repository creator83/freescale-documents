/*
 * File:		gpio_k40.c
 * Purpose:		LED and Switch Example
 *
 *                      Configures GPIO for the LED and push buttons on the TWR-K40X256
 *                      Blue LED - On
 *                      Green LED - Toggles on/off
 *                      Orange LED - On if SW7 pressed
 *                      Yellow LED - On if SW6 pressed
 *
 *                      Also configures push buttons for falling IRQ's. ISR
 *                        configured in vector table in isr.h
 */

#include "common.h"
#include "adc16.h"
#include "uif.h"
#define GPIO_PIN_MASK            0x1Fu
#define GPIO_PIN(x)              (((1)<<(x & GPIO_PIN_MASK)))



int isr_flag, dma_error, diff,thld1,thld2, temp3 = 0;
uint32 Dma_Source_WORD[3], Period;
uint32 Dma_Source_WORD1[3], Period1;

int *res_ptr;
#define DMA_TCD_SADDR(x)                            DMA_SADDR_REG(DMA_BASE_PTR,x) 
#define DMA_TCD_SOFF(x)                             DMA_SOFF_REG(DMA_BASE_PTR,x)
#define DMA_TCD_ATTR(x)                             DMA_ATTR_REG(DMA_BASE_PTR,x)
#define DMA_TCD_NBYTES_MLNO(x)                      DMA_NBYTES_MLNO_REG(DMA_BASE_PTR,x)
#define DMA_TCD_NBYTES_MLOFFNO(x)                   DMA_NBYTES_MLOFFNO_REG(DMA_BASE_PTR,x)
#define DMA_TCD_NBYTES_MLOFFYES(x)                  DMA_NBYTES_MLOFFYES_REG(DMA_BASE_PTR,x)
#define DMA_TCD_SLAST(x)                            DMA_SLAST_REG(DMA_BASE_PTR,x)
#define DMA_TCD_DADDR(x)                            DMA_DADDR_REG(DMA_BASE_PTR,x)
#define DMA_TCD_DOFF(x)                             DMA_DOFF_REG(DMA_BASE_PTR,x)
#define DMA_TCD_CITER_ELINKYES(x)                   DMA_CITER_ELINKYES_REG(DMA_BASE_PTR,x)
#define DMA_TCD_CITER_ELINKNO(x)                    DMA_CITER_ELINKNO_REG(DMA_BASE_PTR,x)
#define DMA_TCD_DLASTSGA(x)                         DMA_DLAST_SGA_REG(DMA_BASE_PTR,x)
#define DMA_TCD_CSR(x)                              DMA_CSR_REG(DMA_BASE_PTR,x)
#define DMA_TCD_BITER_ELINKNO(x)                    DMA_BITER_ELINKNO_REG(DMA_BASE_PTR,x)
#define DMA_TCD_BITER_ELINKYES(x)                   DMA_BITER_ELINKYES_REG(DMA_BASE_PTR,x)
//#define DMAMUX_CHCFG(x)                             DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,x)

struct dma_tcd {
	uint32_t saddr;
	int16_t soff;
	uint16_t tcdAttr;
	uint32_t nbytes;
	int32_t slast;
	uint32_t daddr;
	int16_t doff;
	uint16_t citer;
	int32_t dlast_sga;
	uint16_t csr;	
	uint16_t biter;
	int channelno;
	uint32_t testdata;
	int loopcount;
    uint32_t link;
};

enum COMMAND
{
	CONFIG_BASIC_XFR,
	MEM_FILL,
	DMA_SOFT_START,
	XFR_OVER_WAIT,
	CMP_MEM,
	CONFIG_BASIC_XFR_ERR,
	MINOR_LOOP_CH_LINK,
	MAJOR_LOOP_LINK_EN,
	SLAST_CHECK,
	DLAST_CHECK,
	SGA_TEST_CONFIG,
	SGA_ENB,
	XFR_WAIT_ERROR_CHECK,
	ERROR_CLR,
	INSERT_CPE_ERR,
	CONFIG_PRIORITY,
	CHECK_PRI
};

struct dummy_tcd {

	uint32_t saddr;
	int16_t soff;
	uint16_t attr;
	uint32_t nbytes;
	int32_t slast;
	uint32_t daddr;
	int16_t doff;
	uint16_t citer;
	int32_t dlast_sga;
	uint16_t csr;
	uint16_t biter;
	
};

struct dma_tcd tcd;

//Function declarations
void cmd_rd (int, char **);
void cmd_wrt (int, char **);
void init_gpio(void);
void dma_config(int COMMAND , struct dma_tcd *tcd_value);
void Set_Pit0(void);

UIF_CMD UIF_CMDTAB[] =
{
    UIF_CMDS_ALL
    {"rd",0,0,0,cmd_rd, "Register Display",""},
    {"wrt",0,3,0,cmd_wrt, "Write PIT  <register index> <value>"},

};

UIF_SETCMD UIF_SETCMDTAB[] =
{
    {"sysclk", 0,1,0,""},
};

const int UIF_NUM_CMD    = UIF_CMDTAB_SIZE;
const int UIF_NUM_SETCMD = UIF_SETCMDTAB_SIZE;

void cmd_rd (int argc, char **argv)
{

    printf("\n-------------------------------------------\n");
    printf("       PIT Register Read Utility\n");
    printf("-------------------------------------------\n");
    printf("\n");
        printf("Pit0   = %d \r\n", (PIT_LDVAL0));
        printf("Pit1   = %d \r\n", (PIT_LDVAL1));
        
   
}// end cmd_rd

//******************************************************************************

void
cmd_wrt (int argc, char **argv)
{
    uint32 regindex;
    uint32 regvalue;
    
    int result = 0;
    res_ptr = &result;
         
    printf("\n-------------------------------------------\n");
    printf(" PWM Write Utility\n");
    printf("-------------------------------------------\n");
    printf("\n");
    printf("Valid 'wrt' syntax:\n");
         printf("Set PTD7  Period > wrt  <0> <value(Hz)>\n");
         printf("Set PTD7  Duty > wrt  <1> <value(percent)> \n\n");
         printf("Set PTA16 Period > wrt  <2> <value(Hz)>\n");
         printf("Set PTA16 Duty > wrt  <3> <value(percent)> \n\n");
        
    if (argc != 3)
    {
        printf("Valid 'wrt' syntax:\n");
        printf("Set PTD7 Period > wrt  <0> <value(Hz)> \n\n");
        printf("Set PTD7 Duty > wrt  <1> <value(percent)> \n\n");
        printf("Set PTA16 Period > wrt  <2> <value(Hz)> \n\n");
        printf("Set PTA16 Duty > wrt  <4> <value(percent)> \n\n");
        return;
    }
    else{
      
        regindex = get_value(argv[1],res_ptr,10);
        regvalue = get_value(argv[2],res_ptr,10);
                
         if(regvalue<4294967294){        
              switch (regindex){
                 case 0: Period = 2 * ((48000000/regvalue)/2 -3*32000/regvalue);
                 	 Dma_Source_WORD[2] = Period - ((Period*50))/100;
                   Dma_Source_WORD[1] = ((Period*50))/100;
                   break;
                 case 1: 
                   Dma_Source_WORD[2] = Period - ((Period*regvalue))/100;
                   Dma_Source_WORD[1] = ((Period*regvalue))/100;
                   //printf("\nDma_Source_WORD[0] = %d\n", Dma_Source_WORD[0]);
                   //printf("\nDma_Source_WORD[1] = %d\n", Dma_Source_WORD[1]);
                   //printf("Dma_Source_WORD[2] = %d\n\n", Dma_Source_WORD[2]);
                    break;
                 case 2: Period1 = 2 * ((48000000/regvalue)/2 -3*32000/regvalue);
                   Dma_Source_WORD1[2] = Period1 - ((Period1*50))/100;
                   Dma_Source_WORD1[1] = ((Period1*50))/100;
                   break;
                 case 3: 
                   Dma_Source_WORD1[2] = Period1 - ((Period1*regvalue))/100;
                   Dma_Source_WORD1[1] = ((Period1*regvalue))/100;
                   //printf("\nDma_Source_WORD[0] = %d\n", Dma_Source_WORD[0]);
                   //printf("\nDma_Source_WORD[1] = %d\n", Dma_Source_WORD1[1]);
                   //printf("Dma_Source_WORD[2] = %d\n\n", Dma_Source_WORD1[2]);
                    break;
                 default: break;
              } // end switch/case regindex
         } // if
        else 
        printf("Register value not in valid range.\r\n\n");
       
    }// end else
}// end cmd_wrt

/************************************************************************************ 
*  DMA 32-bit transmit test 
*******************************************************************************/

void dma_32bit (void)
{volatile uint32 *tempptr;
       
        SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;
        
      
        ///////////////////////////////////////////
        //Set up DMA from PIT0
        ///////////////////////////////////////////
        DMAMUX_CHCFG0|=DMAMUX_CHCFG_SOURCE(52);  //PORTD 
        DMAMUX_CHCFG0 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK;
  
	printf("\nStarting eDMA 32-bit memory to memory transfer test!\n");
        tempptr = &Dma_Source_WORD[0];
	
	tcd.saddr = (uint32_t)tempptr;
	tcd.daddr = 0x400Ff0CC; //ADDRESS of PTD_PTOR
	
	tcd.nbytes = 4;
	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
	tcd.soff = 0x0;
	tcd.doff = 0x0;
	tcd.slast = 0x0;
	tcd.loopcount = 0x1;
	tcd.dlast_sga = 0x0;
	tcd.csr = 0x0520;
	
        tcd.channelno = 0;
    
        dma_config(CONFIG_BASIC_XFR, &tcd);
        DMA_ERQ|= 1;
        
        
        tempptr = &Dma_Source_WORD[1];
	
	tcd.saddr = (uint32_t)tempptr;
	tcd.daddr = 0x40037100; //ADDRESS of PIT_LDVAL0
	
	tcd.nbytes = 4;
	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
	tcd.soff = 0x04;
	tcd.doff = 0x0;
	tcd.slast = -8;
	tcd.loopcount = 0x2;
	tcd.dlast_sga = 0x0;
	tcd.csr = 0x0;
        tcd.channelno = 5;
	
        dma_config(CONFIG_BASIC_XFR, &tcd);
        DMA_ERQ|= 2;
       
        
        ///////////////////////////////////////////
        //Set up DMA from PIT1
        ///////////////////////////////////////////
        DMAMUX_CHCFG1|=DMAMUX_CHCFG_SOURCE(49);  //PORTA
        DMAMUX_CHCFG1 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK; 
  
  
	printf("\nStarting eDMA 32-bit memory to memory transfer test!\n");
        tempptr = &Dma_Source_WORD1[0];
	
	tcd.saddr = (uint32_t)tempptr;
	tcd.daddr = 0x400Ff00C; //ADDRESS of PTA_PTOR
	
	tcd.nbytes = 4;
	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
	tcd.soff = 0x0;
	tcd.doff = 0x0;
	tcd.slast = 0x0;
	tcd.loopcount = 0x1;
	tcd.dlast_sga = 0x0;
	tcd.csr = 0x0620;
	
        tcd.channelno = 1;
    
        dma_config(CONFIG_BASIC_XFR, &tcd);
        DMA_ERQ|= 3;


        tempptr = &Dma_Source_WORD1[1];
	
	tcd.saddr = (uint32_t)tempptr;
	tcd.daddr = 0x40037110; //ADDRESS of PIT_LDVAL1
	
	tcd.nbytes = 4;
	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
	tcd.soff = 0x04;
	tcd.doff = 0x0;
	tcd.slast = -8;
	tcd.loopcount = 0x2;
	tcd.dlast_sga = 0x0;
	tcd.csr = 0x0;
        tcd.channelno = 6;
	
        dma_config(CONFIG_BASIC_XFR, &tcd);
        DMA_ERQ|= 4;
       
       
}

//**************************************************************/

void main (void)
{
  
          printf("TWR-K40X256 GPIO Example!\n");
        
          /* Turn on all port clocks */
          SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
        
          /* Initialize GPIO on TWR-K40X256 */
          init_gpio();
          
          //PTD
          Dma_Source_WORD[0]= 0x00000080; //7pin toggle
          // 1kHz duty 50% PIT_LDVAL0
          Dma_Source_WORD[1]= 0x00000957;
          Dma_Source_WORD[2]= 0x00000957;
          
          //PTA
          Dma_Source_WORD1[0]= 0x00010000; //16pin toggle
          // 1kHz duty 50% PIT_LDVAL1
          Dma_Source_WORD1[1]= 0x00000957;
          Dma_Source_WORD1[2]= 0x00000957;
          
          GPIOD_PTOR = 0x00000080; //PTD7 toggle
          GPIOA_PTOR =  0x00010000; //PTA16 toggle
          dma_32bit();  // DMA setting
          Set_Pit0(); // PIT module enbale
          PIT_LDVAL0 = 1777;
          PIT_LDVAL1 = 1777;
          
          PIT_TFLG0 = PIT_TFLG_TIF_MASK;
          PIT_TFLG1 = PIT_TFLG_TIF_MASK;
          GPIOD_PSOR = 0x00000080;  // PTD7 output
          GPIOA_PSOR = 0x00010000;  // PTA16 output
          PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;   // start the timer
          PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;
              
  while(1){
              
   
  
    run_cmd();
  
  
  }//While(1)
  
  }//Main
  
  
  


/*
 * Initialize GPIO
 */
void init_gpio()
{
  //DMA outputs
  PORTD_PCR7|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));
  PORTA_PCR16|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));


  //Change PTD7, PTA16 to outputs
  
  GPIOD_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(7));	
  GPIOA_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(16));	
}
/********************************************************************/

//////////////////////////////////////////////////////////////////////
void dma_config(int COMMAND , struct dma_tcd *tcd_value)
{
	int  i=0,j=0;
	
	switch(COMMAND) 
	{
	  case CONFIG_BASIC_XFR:	
	    
            i = tcd_value->channelno;
            //printf("\nTesting DMA channel "); Print8(i); printf("\n");	   	
            DMA_TCD_SADDR(i) = tcd_value->saddr;
		    
	    DMA_TCD_ATTR(i) = tcd_value->tcdAttr;
	        
	    DMA_TCD_SOFF(i) = tcd_value->soff;	  
	       	
	    DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;	
		    	    
	    DMA_TCD_SLAST(i) = tcd_value->slast;	        
	        
	    DMA_TCD_DADDR(i) = tcd_value->daddr;	    
	            
	    DMA_TCD_CITER_ELINKNO(i) = DMA_CITER_ELINKNO_CITER(tcd_value->loopcount);	        
		    
            DMA_TCD_DOFF(i) = tcd_value->doff;	
		    	    
	    DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;	        
	        
            DMA_TCD_BITER_ELINKNO(i) = DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
		    
            DMA_TCD_CSR(i) = tcd_value->csr;
            
	
	    break;
		
          case MEM_FILL:  
		
	    i = tcd_value->channelno;
	    for( j=0; j < tcd_value->nbytes; j++)	//j=j+4
	    {
	      //*((unsigned long int *)(tcd_value->saddr +j)) = tcd_value->testdata;
	      *((unsigned char *)(tcd_value->saddr +j)) = j + i;
	      //printf("\n"); Print8(*((unsigned char *)(tcd_value->saddr +j)));
	    }
            //*((unsigned long int *)(tcd_value->saddr +j)) = 0x0+j;
            break;
		
	  case DMA_SOFT_START: 
		
	    i = tcd_value->channelno;		
	    //printf("\nDMA channel %d started.\n", i);
	    DMA_SSRT = tcd_value->channelno;     
	    break;
		        
          case XFR_OVER_WAIT: 
		
	    i = tcd_value->channelno;
	    //printf("\nBefore waiting.");
            //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));
            //printf("\nDMA_CSR & MASK = 0x%x", (DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK));
            //printf("\nDMA_ES = 0x%x", DMA_ES);
	    while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
	    //while((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0);
	    //printf("\nAfter waiting.");			
	    if (DMA_ES)
	    {
              dma_error++;
              printf("\nERROR!!! An error ocurred while processing.\n");
	      printf("\nDMA_ES = 0x%x", DMA_ES);
              printf("\nDMA_ERR = 0x%x", DMA_ERR);
	    }  
	    break;
		        
          case CMP_MEM:
		
            j = tcd_value->channelno;
            //printf("\nCSR0 = "); //Print16(DMA_TCD_CSR(0));
            for(i=0; i < (tcd_value->nbytes); i++)
            {		            	
              /*
	      printf("\nSADDR: ");
              Print32((unsigned long int)(tcd_value->saddr+ i)); printf(" = ");
              Print8(*(unsigned char *)( tcd_value->saddr+ i));		          
              printf("\nDADDR: ");
              Print32((unsigned long int)(tcd_value->daddr+ i)); printf(" = ");
              Print8(*(unsigned char *)( tcd_value->daddr+ i));
              printf("\n");
     	      */
              if ( (*(unsigned char *)(tcd_value->saddr + i)) != (*(unsigned char *)(tcd_value->daddr + i)) )
              {
                dma_error++;
                printf("\nData error!");
         	printf("\nSADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->saddr+i)), (*(unsigned char *)( tcd_value->saddr+i)));       
                printf("\nDADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->daddr+i)), (*(unsigned char *)( tcd_value->daddr+i)));
                break;
              }
            }
          
            break;                
            
          case CONFIG_BASIC_XFR_ERR:
        
            i = tcd_value->channelno ;
            printf("\nTesting DMA channel %d", i);
            DMA_TCD_SADDR(i) = tcd_value->saddr ;
	
            DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
							
            DMA_TCD_SOFF(i) = tcd_value->soff;
	
            DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
	
            DMA_TCD_SLAST(i) = tcd_value->slast;

            DMA_TCD_DADDR(i) = tcd_value->daddr;
	
            //DMA_TCD_CITER_ELINKNO(i) = tcd_value->citer;
            DMA_TCD_CITER_ELINKYES(i) = tcd_value->citer;
								
            DMA_TCD_DOFF(i) = tcd_value->doff;
									
            DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;

            //DMA_TCD_BITER_ELINKNO(i) = tcd_value->biter;
            DMA_TCD_BITER_ELINKYES(i) = tcd_value->biter;
	
            DMA_TCD_CSR(i) = tcd_value->csr;	
		        
            break; 
        		
          case MINOR_LOOP_CH_LINK:
		
            i = tcd_value->channelno ;
		
            j = tcd_value->link ;

            
		        		   	
            DMA_TCD_SADDR(i) = tcd_value->saddr ;
	
            DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
							
            DMA_TCD_SOFF(i) = tcd_value->soff;
	
            DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
	
            DMA_TCD_SLAST(i) = 0x0;

            DMA_TCD_DADDR(i) = tcd_value->daddr;
	
            DMA_TCD_CITER_ELINKYES(i) =  DMA_CITER_ELINKYES_CITER(tcd_value->loopcount)| DMA_CITER_ELINKYES_ELINK_MASK | DMA_CITER_ELINKYES_LINKCH(j) ;
																											
            DMA_TCD_DOFF(i) = tcd_value->doff;
									
            DMA_TCD_DLASTSGA(i) = 0x0;

            DMA_TCD_BITER_ELINKYES(i) =  DMA_BITER_ELINKYES_BITER(tcd_value->loopcount)| DMA_BITER_ELINKYES_ELINK_MASK | DMA_BITER_ELINKYES_LINKCH(j);
	
            DMA_TCD_CSR(i) = 0x0;	
		        
            //printf("\nDMA_TCD_CITER_ELINKYES %d = 0x%x", i , DMA_TCD_CITER_ELINKYES(i));
            //printf("\nDMA_TCD_BITER_ELINKYES %d = 0x%x", i , DMA_TCD_BITER_ELINKYES(i));
            break;

          case MAJOR_LOOP_LINK_EN:
	  		
            i = tcd_value->channelno;
            j = tcd_value->link;
            /* In order to follow the coherency model, the following
                steps are REQUIRED to correctly enable major channel
                linking:
		
                1. Perform a write to the CSR to clear the DONE bit
                2. Then perform another write to the CSR to set the MAJORELINK bit */
            
            /* Make sure the DONE bit is cleared before enabling link */
			
            /* Keep trying to clear DONE bit until it is detected cleared */	
            while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
            {
              DMA_TCD_CSR(i) = 0 ;
            }														
			
            /* Keep trying to set E_LINK bit until it is detected set */	
            while ((DMA_TCD_CSR(i) & DMA_CSR_MAJORELINK_MASK) == 0)
            {
              DMA_TCD_CSR(i) = ( 0
                                  |  DMA_CSR_MAJORLINKCH(j)
                                  |  DMA_CSR_MAJORELINK_MASK 
                                );									
            }
	    //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));			
            break;
     
          case SLAST_CHECK:
			
            i = tcd_value->channelno ;		
		
            if ( DMA_TCD_SADDR(i) == tcd_value->saddr)
              printf("\nSLAST adjustment is correct.");
            else
            {
              dma_error++;
              printf("\nERROR!!! SLAST adjustment not correct.");
              printf("\nSADDR = 0x%x", DMA_TCD_SADDR(i));
            }
            break;
		         
          case DLAST_CHECK:
			
            i = tcd_value->channelno ;		
		
            if ( DMA_TCD_DADDR(i) == tcd_value->daddr)
              printf("\nDLAST adjustment is correct.");
            else
            {
              dma_error++;
              printf("\nERROR!!! DLAST adjustment not correct.\n");
              printf("\nDADDR = 0x%x", DMA_TCD_DADDR(i));
            }
            break;
		        		   
          case SGA_TEST_CONFIG:
		
            i = tcd_value->channelno ;
		        
            printf("\nTesting DMA channel %d.", i);
		        		   	
            DMA_TCD_SADDR(i) = tcd_value->saddr;
	
            DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
							
            DMA_TCD_SOFF(i) = tcd_value->soff;
	
            DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
	
            DMA_TCD_SLAST(i) = tcd_value->slast;

            DMA_TCD_DADDR(i) = tcd_value->daddr;
	
            DMA_TCD_CITER_ELINKNO(i) =  DMA_CITER_ELINKNO_CITER(tcd_value->loopcount) ;
								
            DMA_TCD_DOFF(i) = tcd_value->doff;
									
            DMA_TCD_DLASTSGA(i) = tcd_value->link;

            DMA_TCD_BITER_ELINKNO(i) =  DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
	
            DMA_TCD_CSR(i) = tcd_value->csr;	
          
            break;
		        
          case SGA_ENB: 	
            /* In order to follow the coherency model, the following
                steps are REQUIRED to correctly enable scatter/gather
                functionality:
		
                1. Perform a write to the CSR to clear the DONE bit
                2. Then perform another write to the CSR to set the E_SG bit */
            /* Make sure the DONE bit is cleared before enabling link */
            /* Keep trying to clear DONE bit until it is detected cleared */	
	    	
            i = tcd_value->channelno ;
	               
            while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
            {
              DMA_TCD_CSR(i) = 0 ;
            }														
		
            /* Keep trying to set E_SG bit until it is detected set */	
            while ((DMA_TCD_CSR(i) & DMA_CSR_ESG_MASK) == 0)
            {
              DMA_TCD_CSR(i) = ( 0
                                  |  DMA_CSR_ESG_MASK 
                                );
            }					
            break;
		            
          case XFR_WAIT_ERROR_CHECK: 	/* Wait for DMA to complete */
			
            i = tcd_value->channelno ;
            //printf("\nbefore while..");																	
            while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
            //printf("\nafter while..");
            /* Check for errors */
            if (DMA_ES)
            {
              //printf("\nDMA_TCD_CSR = "); Print16(DMA_TCD_CSR(i));
              //printf("\nDMA_ES = "); Print32(DMA_ES);
              //printf("\nDMA_ERR = "); Print32(DMA_ERR);
	      dma_error++; 	
              if ((DMA_ES & DMA_ES_DAE_MASK) != 0)
              {
                printf("\nDAE error detected correctly.\n");
                j++;
              }	
              if((DMA_ES & DMA_ES_DBE_MASK) != 0)
              {
                printf("\nDBE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_DOE_MASK) != 0)
              {
                printf("\nDOE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_NCE_MASK) != 0)
              {
                printf("\nNCE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_SAE_MASK) != 0)
              {
                printf("\nSAE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_CPE_MASK) != 0)
              {
                printf("\nCPE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_SBE_MASK) != 0)
              {
                printf("\nSBE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_SGE_MASK) != 0)
              {
                printf("\nSGE error detected correctly.\n");
                j++;
              } 
              if((DMA_ES & DMA_ES_SOE_MASK) != 0)
              {
                printf("\nSOE error detected correctly.\n");
                j++;
              }
              if((DMA_ES & DMA_ES_ECX_MASK) != 0)
              {
                printf("\nError cancel transfer detected correctly.\n");
                j++;
              }
              if (j == 0)
                printf("\nERROR NOT DETECTED!!!\n");		        
                //printf("\nDMAERR = "); Print32(DMA_ERR);
            }
	    else
              printf("\nNO ERROR DETECTED!!!\n");
	            	
	    break;
	            	
          case ERROR_CLR:     
			
            printf("\nBefore DMA_ERR = 0x%x", DMA_ERR);
            DMA_CERR = DMA_CERR_CAEI_MASK;
            //printf("\nAfter Clear Error.");
            printf("\nAfter DMA_ERR = 0x%x", DMA_ERR);
            printf("\nDMA_ES = 0x%x", DMA_ES);
            break;
		            
          case INSERT_CPE_ERR:
			
            i = tcd_value->channelno ;
            DMA_DCHPRI1 = 0x01;
            DMA_DCHPRI2 = 0x01;
            /*
            for(j=0;j<2;j++)
            {
              //DMA_DCHPRI(j) = 0x01;
              //printf("\nDCHPRI("); Print8(j); printf(") = "); Print8(DMA_DCHPRI(j));
            }
            */        
            break;
	                
          case CONFIG_PRIORITY:
			
            DMA_DCHPRI0 = 0x80 + 0;	//0x80+ 5;
            DMA_DCHPRI1 = 0x80 + 1;	//0xC0 + 1;	    	
            DMA_DCHPRI2 = 0x80 + 2;
            DMA_DCHPRI3 = 0x80 + 3;	    	
            DMA_DCHPRI4 = 0x80 + 4;
            DMA_DCHPRI5 = 0x80 + 5;	//0;
            DMA_DCHPRI6 = 0x80 + 6;
            DMA_DCHPRI7 = 0x80 + 7;
            DMA_DCHPRI8 = 0x80 + 8;
            DMA_DCHPRI9 = 0x80 + 9;
            DMA_DCHPRI10 = 0x80 + 10;
            DMA_DCHPRI11 = 0x80 + 11;
            DMA_DCHPRI12 = 0x80 + 12;
            DMA_DCHPRI13 = 0x80 + 13;
            DMA_DCHPRI14 = 0x80 + 14;
            DMA_DCHPRI15 = 0x80 + 15;    
	        
            DMA_CR = 0x0000;
        
            break;
	                
          case CHECK_PRI:
		
            i = tcd_value->channelno ;
            j = tcd_value->link ;
			
            while((((DMA_TCD_CSR(i) & DMA_CSR_ACTIVE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));
            //while((!( DMA_TCD_CSR(i) &  DMA_TCD_CSR_ACTIVE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE))  );
            printf("\nChannel %d transfer is complete and channel %d is preempted \n", j, i);
    		    
            while((((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));        
            //while((!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)));
            printf("\nBoth the channels have completed the transfer\n");
                    
            break;	               
	}
}


//////////////////////////////////
////////////////////////////////////
//////////////////////////////////////

void Set_Pit0(void)
{
  SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;      // turn on PIT cloccks
  PIT_MCR    = 1;                    // reset MDIS -> enable the module
//  PIT_LDVAL0 = 0x017d7840;           // free running on 32 bits 
  //PIT_TCTRL0 = PIT_TCTRL_TIE_MASK;   // start the timer
  //PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;   // start the timer
  
}  
//////////////////////////////////////


/*
 * ISR for PORTC interrupts
 */
void portc_isr(void)
{
  PORTC_ISFR=0xFFFFFFFF;  //Clear Port C ISR flags
}

/*
 * ISR for PORTE interrupts
 */
void porte_isr(void)
{
  PORTE_ISFR=0xFFFFFFFF;  //Clear Port E ISR flags
}

/*
 * ISR for PORTA interrupts
 */
void porta_isr(void)
{
  PORTA_ISFR=0xFFFFFFFF;  //Clear Port A ISR flags
}
