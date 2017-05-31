These executables blhost.exe and elftosb.exe are used for the QuadSPI.  elftosb
creates a .SB image file to program the QSPI.  And blhost is the Kinetis 
Bootloader (KBOOT) host program that interfaces with the ROM bootloader in the
MCU and programs the QSPI.  These executables came from the package NXP Kinetis 
Bootloader (REV 2.0.0), available for download from 
http://www.nxp.com/KBOOT

lpcbmp2c.exe is a utility that converts a BMP bitmap image file to a text file
with a C array for the image, which can then be included in an application.
For this example, the syntax below will convert the image to the required
format.
lpcbmp2c.exe .\..\images\NXP_Logo.bmp -565 -s