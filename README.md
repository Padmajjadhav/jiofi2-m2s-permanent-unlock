# 📡 JioFi 2 M2S — Permanent Network Unlock

<p align="center">
  <strong>Permanent SIM Unlock & Fastboot Flashing Toolkit</strong><br>
  Unlock your JioFi 2 M2S to use supported non-Jio SIM cards.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Device-JioFi%202%20M2S-2563EB?style=for-the-badge" alt="Device: JioFi 2 M2S">
  <img src="https://img.shields.io/badge/Chipset-Qualcomm%20MDM9607-0EA5E9?style=for-the-badge" alt="Qualcomm MDM9607">
  <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-10B981?style=for-the-badge" alt="Supported platforms">
</p>

---

## 📖 Overview

**JioFi 2 M2S Permanent Network Unlock** is a community-developed flashing package for the JioFi 2 M2S mobile hotspot, powered by the Qualcomm Snapdragon MDM9607 chipset.

This project aims to address an issue where non-Jio SIM cards, such as Vi, Airtel, and BSNL, may lose network connectivity after a reboot or power cycle. The device may show a **"Detached"** connection status accompanied by a red LED.

The package includes Fastboot flashing scripts and the required binary files for applying the provided unlock patch.

### ✨ Features

- 🔓 Intended to enable the use of supported non-Jio SIM cards.
- 🔄 Includes a patch intended to preserve the unlock across normal reboots.
- 🖥️ Automated flashing scripts for Windows, Linux, and macOS.
- 📶 Includes APN configuration guidance for Vi, Airtel, and BSNL.
- 📦 Complete flashing package distributed through GitHub Releases.

> **Important:** Results depend on the device variant, firmware, and compatibility of the supplied binaries. Back up your configuration and understand the risks before flashing.

---

## 📥 Download

### Latest release: v1.0.0

<p align="center">
  <a href="https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/releases/download/v1.0.0/jiofi2_m2s_permanent_unlock_package.zip">
    <img src="https://img.shields.io/badge/⬇%20Download-Permanent%20Unlock%20Package-238636?style=for-the-badge" alt="Download unlock package">
  </a>
</p>

**Package:** `jiofi2_m2s_permanent_unlock_package.zip`

The release archive contains the flashing scripts and required files, including `modem_jiofi2_m2s.img` (approximately 42 MB).

- [View all releases](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/releases)
- [Browse the repository](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock)

---

## ⚙️ Requirements

Before you begin, make sure you have:

- A compatible **JioFi 2 M2S** device.
- A Windows, Linux, or macOS computer.
- A working micro-USB **data cable**.
- A sufficiently charged battery and a stable USB connection.
- The complete flashing package extracted to a local folder.
- The appropriate USB drivers and Fastboot tools for your operating system, if required.

**Do not proceed if you are unsure whether your device is the exact supported model.**

---

## 🚀 Flashing Instructions

### Step 1 — Download and extract

1. Download the ZIP archive from the [v1.0.0 release](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/releases/download/v1.0.0/jiofi2_m2s_permanent_unlock_package.zip).
2. Extract the complete archive to a folder on your computer.
3. Make sure all included files remain together in the extracted directory.

### Step 2 — Enter Fastboot Mode

1. Power off the JioFi M2S completely.
2. Remove and reinsert the battery if necessary.
3. Press and hold the **WPS + Power** buttons simultaneously for approximately 3–5 seconds.
4. Wait for the LEDs to remain lit, as described by the device's Fastboot procedure.
5. Connect the JioFi to your computer using a micro-USB data cable.

> Button combinations and LED indications can vary by hardware revision. Confirm that the device has entered the intended flashing mode before continuing.

### Step 3 — Run the flashing script

Choose the instructions for your operating system.

#### 🪟 Windows

1. Open the extracted package folder.
2. Double-click `flash_unlock_permanent.bat`.
3. Read the terminal output and follow any prompts.
4. Do not disconnect the USB cable or interrupt the process while flashing is in progress.
5. Wait for the script to finish before proceeding.

#### 🐧 Linux

Open a terminal in the extracted package directory and run:

```bash
chmod +x flash_unlock_permanent.sh
./flash_unlock_permanent.sh
```

If permission or device-detection errors occur, check the USB connection, Fastboot installation, and device permissions.

#### 🍎 macOS

Open Terminal in the extracted package directory and run:

```bash
chmod +x flash_unlock_permanent.sh
./flash_unlock_permanent.sh
```

If macOS blocks execution or cannot detect the device, verify the script's requirements and USB access before continuing.

### Step 4 — Restart and verify

1. Allow the flashing script to finish completely.
2. Restart the device only after the script reports completion.
3. Insert your supported non-Jio SIM card.
4. Connect to the JioFi Wi-Fi network.
5. Open the administration interface and configure the correct APN as described below.
6. Verify that the device registers on the network and can access mobile data.

---

## 🌐 APN Configuration

**Configure the correct APN after flashing.** Incorrect profile settings may prevent mobile data from working even when the SIM is detected.

### Step 1 — Open the administration panel

Connect to the JioFi Wi-Fi network and open either address in your browser:

- [http://jiofi.local.html](http://jiofi.local.html)
- [http://192.168.225.1](http://192.168.225.1)

Sign in using your configured administrator credentials.

> The default credentials are sometimes documented as `administrator` / `administrator`. If these do not work, use the credentials configured on your device or consult its documentation.

### Step 2 — Create an APN profile

Navigate to:

`Network → Profile Management`

1. Change the APN mode from **Auto** to **Manual**, if available.
2. Create a new profile.
3. Enter the appropriate APN for your SIM operator.
4. Save the profile.
5. Select the new profile as the default connection profile.

### Step 3 — APN reference

| SIM operator | APN to try |
|---|---|
| Vi (Vodafone Idea) | `www` or `portalnmms` |
| Airtel | `airtelgprs.com` |
| BSNL | `bsnlnet` |

**Note:** APN requirements can vary by operator, plan, region, and SIM provisioning. These are suggested values, not guaranteed universal settings. If a profile fails, confirm the current APN with your mobile operator.

### Step 4 — Check connection settings

Navigate to:

`Network → Connection Settings`

If the interface provides a **Data Roaming** option, enable it only if required by your operator and plan.

Save the settings and allow the device to reconnect.

### ⚠️ Why manual APN configuration matters

The supplied instructions recommend avoiding automatic APN selection because the device may select the default `jionet` profile, potentially resulting in a detached connection with a non-Jio SIM.

---

## 🔍 Troubleshooting

| Problem | What to check |
|---|---|
| Device not detected | Check the USB data cable, USB port, drivers, and Fastboot mode. |
| SIM detected but no internet | Verify the APN, default profile, signal strength, and operator data settings. |
| Connection shows "Detached" | Confirm SIM compatibility, network registration, and manual APN configuration. |
| Red LED after restarting | Check network registration and review the flashing output before attempting any further changes. |
| Flashing script fails | Read the error message, confirm the device model, and verify that all package files are present. |
| Device does not boot normally | Stop and investigate the recovery procedure for the exact hardware revision. Avoid repeated blind flashing. |

---

## ⚠️ Important Warnings

Please read these precautions before flashing.

- **Device compatibility:** This package is intended for the JioFi 2 M2S. Do not assume it supports other JioFi models.
- **Potential device damage:** Flashing modem or bootloader-related binaries can render a device unusable if the files or flashing procedure are incompatible.
- **Do not interrupt flashing:** Disconnecting the device or losing power during a critical write may cause a failure.
- **Avoid unrelated firmware:** Do not flash firmware or bootloader images from other router brands or models. Recovery may be difficult or impossible.
- **No universal guarantee:** Network unlocking, persistence, and mobile-data connectivity have not been independently verified for every device revision and operator.
- **Mobile network compatibility:** An unlocked device may still lack support for particular LTE bands, network configurations, or operator requirements.
- **Use at your own risk:** You are responsible for checking compatibility, backing up important configuration data, and understanding the consequences before proceeding.

The Qualcomm Emergency Download (EDL/9008) mode is a low-level recovery state. If the device enters this state unexpectedly, do not attempt random firmware writes.

---

## 🙏 Credits & Attribution

Special thanks to the contributors whose reverse-engineering work made this project possible.

- **abhimortal6 (`ab_hi_j` on XDA)** — Credited for reverse-engineering the baseband and providing the patched `aboot` and modem binaries.
- **Padmajjadhav** — Fastboot automation scripts, persistent reboot fix, package compilation, and tutorial documentation.

Please retain the original attribution and any applicable license notices when redistributing third-party binaries or modified files.

---

## 📄 Disclaimer

This is an independent community project and is not affiliated with, endorsed by, or supported by Reliance Jio, Qualcomm, Vi, Airtel, or BSNL.

All trademarks belong to their respective owners. Flashing device firmware or modem components involves risk. This documentation is provided for educational and informational purposes, without any guarantee of compatibility, functionality, or recovery.

---

## ⭐ Support the Project

If this project helps you, consider giving the repository a ⭐ on GitHub.

- [⭐ Star the repository](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock)
- [📦 Download the latest release](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/releases)
- [🐛 Report an issue](https://github.com/Padmajjadhav/jiofi2-m2s-permanent-unlock/issues)

**Maintained by [@Padmajjadhav](https://github.com/Padmajjadhav)**
