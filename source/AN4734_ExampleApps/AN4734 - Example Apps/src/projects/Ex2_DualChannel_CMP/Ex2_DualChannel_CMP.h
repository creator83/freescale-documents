// KL04_ref_design_demo.h


// Flash functions
void IO_config(void);
void initialize_LPTMR(void);


// RAM only functions
__ramfunc void Run_RAM_Loop(void);
__ramfunc void LPTMR_IRQHandler(void);

#define CMP_CHANNEL_V0  1
#define CMP_CHANNEL_V1  3
#define CMP_DACIN_6B    7
 