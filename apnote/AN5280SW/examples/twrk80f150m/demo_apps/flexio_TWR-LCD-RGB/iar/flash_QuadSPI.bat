@rem create SB file
.\..\bin\elftosb.exe -V -c flexio_TWR-LCD-RGB.bd -o flexio_TWR-LCD-RGB.sb

@rem connect to ROM bootloader through USB on TWR-K80F150M
@rem unsecure the internal flash
.\..\bin\blhost -u -- flash-erase-all-unsecure

@rem write the QSPI bootloader config block to internal SRAM
.\..\bin\blhost -u -- write-memory 0x20000000 .\..\qspi_config_block.bin 

@rem configure the quadSPI
.\..\bin\blhost -u -- configure-quadspi 1 0x20000000

@rem erase entire quadSPI
.\..\bin\blhost.exe -u -- flash-erase-region 0x68000000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68080000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68100000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68180000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68200000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68280000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68300000 0x80000
.\..\bin\blhost.exe -u -- flash-erase-region 0x68380000 0x80000

echo %time%
@rem program the SB file
.\..\bin\blhost.exe -u -- receive-sb-file flexio_TWR-LCD-RGB.sb
echo %time%

