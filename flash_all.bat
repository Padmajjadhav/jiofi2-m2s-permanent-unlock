@echo off
echo ============================================
echo  JioFi M2S - Flash All (Stock Recovery)
echo  Firmware: PEG_M2S_B11
echo ============================================
echo.
echo WARNING: This will erase and flash all main partitions.
echo Make sure your device is in fastboot mode.
echo.
pause

echo.
echo [1/6] Flashing system...
fastboot erase system
fastboot flash system mtd17_system.img

echo [2/6] Flashing boot...
fastboot erase boot
fastboot flash boot mtd7_boot.img

echo [3/6] Flashing modem...
fastboot erase modem
fastboot flash modem mtd8_modem.img

echo [4/6] Flashing modm2...
fastboot erase modm2
fastboot flash modm2 mtd15_modm2.img

echo [5/6] Flashing systm2...
fastboot erase systm2
fastboot flash systm2 mtd14_systm2.img

echo [6/6] Flashing bot2...
fastboot erase bot2
fastboot flash bot2 mtd13_bot2.img

echo.
echo ============================================
echo  Flash complete! Rebooting device...
echo ============================================
fastboot reboot

pause
