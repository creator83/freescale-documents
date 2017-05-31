// KL04_ref_design_demo.h


// Flash functions
void IO_config(void);
void initialize_LPTMR(void);
void initialize_CMP(void);

// RAM only functions
__ramfunc void Run_RAM_Loop(void);
__ramfunc void LPTMR_IRQHandler(void);

#define CMP_CHANNEL_V0  1
#define CMP_CHANNEL_V1  3

#define CMP_DACIN_12B   3
#define CMP_DACIN_6B    7

// The DAC output voltage is defined by the formula:
//  Vout = Vin * (1 + DACDAT0[11:0]/4096.  Therefore, to get an
//  output of 1/2 * Vin, must write 0x7FF to the DACDAT registers. 
#define DAC_V_LOW_VAL   0xFF
#define DAC_V_HIGH_VAL  0x07