#!/bin/bash
echo "======================================================="
echo " JioFi 2 M2S - Permanent Network Unlock Flash"
echo " Patched Bootloader + Patched Modem (SimLock Bypass)"
echo "======================================================="
echo ""
echo "Prerequisites:"
echo "1. Turn off your JioFi M2S."
echo "2. Hold [WPS + Power] buttons simultaneously for 3-5 seconds."
echo "3. Connect JioFi to PC via USB cable."
echo ""
echo "Checking for Fastboot device..."
fastboot devices
echo ""
read -p "Press Enter to continue or Ctrl+C to cancel..."

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo ""
echo "[1/3] Flashing Unlocked Bootloader (aboot)..."
fastboot flash aboot aboot_jiofi2_m2s.img || {
    echo "Attempting fastboot oem unlock..."
    fastboot oem unlock
    fastboot flash aboot aboot_jiofi2_m2s.img
}

echo ""
echo "[2/3] Flashing Patched Modem Partition (SimLock Bypass)..."
fastboot flash modem modem_jiofi2_m2s.img

echo ""
echo "[3/3] Flashing Secondary Modem Partition (modm2)..."
fastboot flash modm2 modem_jiofi2_m2s.img

echo ""
echo "======================================================="
echo " Flash complete! Rebooting device..."
echo "======================================================="
fastboot reboot
