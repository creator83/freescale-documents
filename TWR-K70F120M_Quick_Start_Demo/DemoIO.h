#ifndef __DemoIO_h__
#define __DemoIO_h__

#define ON TRUE
#define OFF FALSE

typedef enum {
   LED1=0,
   LED2,
   LED3,
   LED4,
   MAX_OUTPUTS
} Output_t;

typedef enum {
   SW1_INPUT=0,
   SW2_INPUT,
   MAX_INPUTS
} Input_t;

static FILE_PTR input_port=NULL, output_port=NULL;

void InitializeIO(void);
boolean GetInput(Input_t);
boolean GetOutput(Output_t);
void SetOutput(Output_t signal,boolean state);
void TiltOutput(char signal);
void OutputAllOn();
void OutputAllOff();
void ToggleAllOutput(int toggles);

#endif