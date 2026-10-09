@echo off
echo =======================================================
echo  JioFi 2 M2S - Permanent Network Unlock Flash
echo  Patched Bootloader + Patched Modem (SimLock Bypass)
echo =======================================================
echo.
echo Prerequisites:
echo 1. Turn off your JioFi M2S.
echo 2. Hold [WPS + Power] buttons simultaneously for 3-5 seconds.
echo 3. Connect JioFi to PC via USB cable.
echo.
echo Checking for Fastboot device...
fastboot devices
echo.
echo If your device serial number is listed above, press any key to flash.
echo If NOT listed, install Qualcomm/Android Fastboot USB drivers and retry.
echo.
pause

echo.
echo [1/3] Flashing Unlocked Bootloader (PEG_M2S_B04 aboot)...
fastboot flash aboot aboot_jiofi2_m2s.img
if %errorlevel% neq 0 (
    echo.
    echo Warning: Flashing aboot failed or permission denied.
    echo Attempting fastboot oem unlock...
    fastboot oem unlock
    fastboot flash aboot aboot_jiofi2_m2s.img
)

echo.
echo [2/3] Flashing Patched Modem Partition (SimLock Bypass)...
fastboot flash modem modem_jiofi2_m2s.img

echo.
echo [3/3] Flashing Secondary Modem Partition (modm2)...
fastboot flash modm2 modem_jiofi2_m2s.img

echo.
echo =======================================================
echo  Flash complete! Rebooting device...
echo =======================================================
fastboot reboot

echo.
echo Device is restarting. 
echo Ensure your Vi APN (portalnmms) is set as default in the web UI.
echo.
pause
