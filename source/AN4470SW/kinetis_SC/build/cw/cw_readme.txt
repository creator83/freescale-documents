General directions for the CodeWarrior based project:

1. Set the workspace directory to the folder "kinetis_SC" . This project uses workspace relative paths, so in order for the project to find all files correctly the CW10.x workspace must be set to the "kinetis_sc" folder (the one that contains the build and src directories).

2. From the CW10.x bench select the File->Import... option. Expand the "General" folder and selct "Existing Projects into Workspace" and click on Next. Click on the "Browse..." button next to the select root directory option. If you select the "kinetis_sc" folder location you'll get a list of all of the CW10.x example code projects in this archive, in this case its just the "lowPpower_demo" project. Select the project or projects you would like and click on "Finish." 

3. Select MK20DX128_INTERNAL_FLASH build configuration so that the binary file for FLASH is generated after compiling the project.
Go to menu Project->Build Configurations->Set Active

4. Click on the Build button (the hammer icon). This will build the currently select configuraiton of the project. The build will have a  number of warnings mostly about multiply defined symbols. These are ok and can be ignored.

5. Click on the small arrow next to the debug button (the bug icon) and click on "Debug Configurations...". In the window that pops up expand the "CodeWarrior Download" option. Here you will see a list of the available debug configurations and the connection method you are using to talk to your board (OSJTAG, P&E Universal-multilink, or J-link). Select the option appropriate for the configuration and JTAG hardware you are using and select "Debug" to download the code (programming the flash if needed) and start a debug session. 
*NOTE: if you haven't built a given configuration the "Debug" button will remain grayed out.




