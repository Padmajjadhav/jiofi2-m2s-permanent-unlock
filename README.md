# JioFi 2 M2S Permanent Network Unlock

Permanent SIM unlock package and Fastboot flashing scripts for the **JioFi 2 M2S** (Qualcomm Snapdragon MDM9607).

This project fixes the issue where non-Jio SIM cards (Vi, Airtel, BSNL) drop their connection into **"Detached" status with a Red LED** whenever the device is restarted or powered off.

---

## 📥 Download

Download the complete flash package from the Releases page:
👉 **[Download jiofi2_m2s_permanent_unlock_package.zip (v1.0.0)](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/releases/download/v1.0.0/jiofi2_m2s_permanent_unlock_package.zip)**

*(Note: The `modem_jiofi2_m2s.img` file is 42 MB, so all binaries and scripts are bundled together in the release zip above).*

---

## ⚡ Quick Flashing Instructions

### Step 1: Boot into Fastboot Mode
1. Turn off your JioFi M2S completely (remove and re-insert the battery).
2. Press and hold both the **WPS button + Power button** simultaneously for 3 to 5 seconds until the LEDs stay lit.
3. Connect the JioFi to your PC via a micro-USB data cable.

### Step 2: Flash the Permanent Patch
* **Windows:** Extract the downloaded zip and double-click `flash_unlock_permanent.bat`.
* **Linux / macOS:** Open terminal in the extracted folder and run:
  ```bash
  chmod +x flash_unlock_permanent.sh
  ./flash_unlock_permanent.sh
