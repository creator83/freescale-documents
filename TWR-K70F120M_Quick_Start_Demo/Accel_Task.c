/**************************************************************************
*
* FileName: Accel_Task.c
*
* Comments: Uses I2C driver to initialize and read MMA7660 Accelerometer on the
*            the tower board
*
*
***************************************************************************/

#include "demo.h"
#include <i2c.h>

#if !BSPCFG_ENABLE_I2C0
#error This application requires BSPCFG_ENABLE_I2C0 defined non-zero in user_config.h. Please recompile libraries with this option.
#endif

/* I2C Address for MMA7660 */
#define I2C_ACCELEROMETER_ADDRESS 0x1D
#define I2C_DATA_SIZE 8

void InitializeMMA8451Q();
void InitializeI2C();

void write_I2C(int i2c_device, uchar reg, uchar value);
void read_I2C(int i2c_device, int sensor, int length);
void print_sensor_data();
signed char convert_accel_data(signed char input);
void print_accelerometer_data();


void calibrate();
void update_accel_calibration();

/* Global Variables */
extern SENSOR_DATA Sensor;
FILE_PTR fd;
uchar recv_buffer[I2C_DATA_SIZE];
signed char x_offset,y_offset,z_offset;
char print_accel;

unsigned int *DemoData = (unsigned int *)DEMO_DATA;

extern char fatmode;

/*
 * Task for reading the MMA7660 accelerometer data
 */
void Accel_Task(uint_32 data)
{
  printf("Starting Accelerometer Task\n");

  /* Initialize global variables */
  print_accel=0;
  x_offset=0;
  y_offset=0;
  z_offset=0;

  //Initialize I2C driver
  InitializeI2C();

  //Configure MMA8451Q
  InitializeMMA8451Q();

  //Read accelerometer offset from memory
  update_accel_calibration();

  /*
   * Read the accelerometer data and store it in a global structure
   */
  while (TRUE)
  {
    /* If both push buttons held down, perform offset calibration */
    if((GetInput(SW1_INPUT) && GetInput(SW2_INPUT)))
    {
      calibrate();
    }

    //Read first seven registers on MMA8451Q
    read_I2C(I2C_ACCELEROMETER_ADDRESS,0x01,6);
  	
    /* Parse out data */
    Sensor.accel_x=(int_8)recv_buffer[0]+x_offset;
    Sensor.accel_y=(int_8)recv_buffer[2]+y_offset;
    Sensor.accel_z=(int_8)recv_buffer[4];

    read_I2C(I2C_ACCELEROMETER_ADDRESS,0x10,3);    
    Sensor.accel_status=recv_buffer[0]; 
    
    if(print_accel)
    {
      print_accelerometer_data();
    }

    //Time delay
     _time_delay(300);
   }
}

void InitializeI2C()
{
  /* Open the I2C driver, and assign a I2C device handler*/
  fd = fopen ("i2c0:", NULL);
  if (fd == NULL)
  {
    printf ("Failed to open the I2C driver!\n");
    _time_delay (200L);
    _mqx_exit (1L);
  }

  /* Set I2C into Master mode */
  ioctl (fd, IO_IOCTL_I2C_SET_MASTER_MODE, NULL);
}

/*
 * Configure the MMA8451Q Accelerometer
 */
void InitializeMMA8451Q()
{
  /* Configure MMA8451Q */
  write_I2C(I2C_ACCELEROMETER_ADDRESS,0x11,0xC0);  
  write_I2C(I2C_ACCELEROMETER_ADDRESS,0x2A,0x01);
  
}

/* Function for writing data to I2C Device */
void write_I2C(int i2c_device_address, uchar reg, uchar value)
{
  uchar data[2];

  data[0]=reg;   //Sensor register
  data[1]=value; //Byte of data to write to register

  /* Set the destination address */
  ioctl (fd, IO_IOCTL_I2C_SET_DESTINATION_ADDRESS, &i2c_device_address);

  /* Write 2 bytes of data: the desired register and then the data */
  fwrite (&data, 1, 2, fd);  //data to write, size of unit, # of bytes to write, I2C device handler
  fflush (fd);

  /* Send out stop */
  ioctl (fd, IO_IOCTL_I2C_STOP, NULL);
}

/* Function for reading data from I2C Device. Data placed in recv_buffer[] */
void read_I2C(int i2c_device_address, int sensor, int length)
{
  int n=length;

  //The starting register for the particular sensor requested
  uchar reg=sensor;

  //Set the I2C destination address
  ioctl (fd, IO_IOCTL_I2C_SET_DESTINATION_ADDRESS, &i2c_device_address);

  //Tell the I2C device which register to read data from
  fwrite (&reg, 1, 1, fd); //data to write, size of unit, # of bytes to write, I2C device handler

  //Wait for completion
  fflush (fd);

  //Do a repeated start to avoid giving up control
  ioctl (fd, IO_IOCTL_I2C_REPEATED_START, NULL);

  //Set how many bytes to read
  ioctl (fd, IO_IOCTL_I2C_SET_RX_REQUEST, &n);

  //Read n bytes of data and put it into the recv_buffer
  fread (&recv_buffer, 1, n, fd); //buffer to read data into, size of unit, # of bytes to read, I2C device handler

  //Wait for completion
  fflush (fd);

  //Send out stop
  ioctl (fd, IO_IOCTL_I2C_STOP, NULL);
}

/*
 * Function for printing out accelerometer data to terminal
 */
void print_accelerometer_data()
{
  printf("%d   %d   %d\n",Sensor.accel_x,Sensor.accel_y,Sensor.accel_z);
}


/*
 * Calibrate accelerometer offset
 */
void calibrate()
{
  int i;
  int x_avg=0;
  int y_avg=0;
  int z_avg=0;

  /* Calculate average from multiple readings */
  for(i=0;i<64;i++)
  {
    read_I2C(I2C_ACCELEROMETER_ADDRESS,0x01,6);
    x_avg+=(int_8)recv_buffer[0];
    y_avg+=(int_8)recv_buffer[2];
    z_avg+=(int_8)recv_buffer[4];
  }
  x_avg=(int)x_avg/64;
  y_avg=(int)y_avg/64;
  z_avg=(int)z_avg/64;

  /* Calculate offset */
  x_offset=(signed char)x_avg*-1;
  y_offset=(signed char)y_avg*-1;
  z_offset=0;

  printf("Offset is x=%d and y=%d and z=%d\n",x_offset,y_offset,z_offset);

  /* Write offset to flash memory */
  write_demo_data();

  /* Read accelerometer offset from memory */
  update_accel_calibration();
}

/*
 * Write offset data and high score to flash memory
 *
 * Will first erase sector, then perform write
 */

void write_demo_data()
{
  unsigned int destination=DEMO_DATA;

  //Turn off interrupts so don't get interrupted
  asm("cpsid.n i");

  //Make sure Flash commmand ok
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}	
   		
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}	

  //Write to FSTAT
  FTFE_FSTAT=FTFE_FSTAT_RDCOLERR_MASK| FTFE_FSTAT_ACCERR_MASK | FTFE_FSTAT_FPVIOL_MASK;

  //Configure for sector erase
  FTFE_FCCOB0 = (uint_8)0x09; //FTFE_ERASE_SECTOR
  FTFE_FCCOB1 = (uint_8)(destination >> 16);
  FTFE_FCCOB2 = (uint_8)((destination >> 8) & 0xFF);
  FTFE_FCCOB3 = (uint_8)(destination & 0xFF);
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}

  //Execute command
  FTFE_FSTAT|= FTFE_FSTAT_CCIF_MASK;

  //Wait for completion
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}

  //Setup for write command
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}
  FTFE_FSTAT=FTFE_FSTAT_RDCOLERR_MASK| FTFE_FSTAT_ACCERR_MASK | FTFE_FSTAT_FPVIOL_MASK;
  FTFE_FCCOB0=   (uint_8)0x07; //FTFE_PROGRAM_LONGWORD
  FTFE_FCCOB1 = (uint_8)(destination >> 16);
  FTFE_FCCOB2 = (uint_8)((destination >> 8) & 0xFF);
  FTFE_FCCOB3 = (uint_8)(destination & 0xFF);
  FTFE_FCCOB4 =(int_8)high_score;
  FTFE_FCCOB5=(int_8)x_offset;
  FTFE_FCCOB6=(int_8)y_offset;
  FTFE_FCCOB7=(int_8)z_offset;


  
  //Execute command
  FTFE_FSTAT|= FTFE_FSTAT_CCIF_MASK;

  //Wait for completion
  while((FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK )==0)
  {}

  //Enable interrupts again
  asm("cpsie.n i  ");
}

/*
 * Read accelerometer offset from memory
 */
void update_accel_calibration()
{
  int stored_data=*DemoData;

  //If no valid data, return
  if(stored_data == 0xFFFFFFFF)
  {
    x_offset=0;
    y_offset=0;
    z_offset=0;
    return;
  }

  x_offset=(stored_data&0x00FF0000)>>16;
  y_offset=(stored_data&0x0000FF00)>>8;
  z_offset=(stored_data&0x000000FF);

  printf("Offset in memory is x=%d and y=%d and z=%d\n",x_offset,y_offset,z_offset);
}
