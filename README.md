# 🎣 GPO Autofish

<div align="center">

**Advanced Automated Fishing Macro for Grand Piece Online**

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows)

_Intelligent PD Controller-based fishing automation with auto-purchase system_

</div>

---

## ✨ Features

### 🤖 **Intelligent Automation**

- **PD Controller Algorithm** - Smooth, accurate fish tracking using Proportional-Derivative control
- **Real-time Screen Capture** - Uses MSS for fast, Windows 11 compatible screen capture
- **Adaptive Detection** - Automatically detects and tracks the fishing minigame
- **Smart Recasting** - Automatically recasts when fish is lost or timeout occurs

### 💰 **Auto-Purchase System**

- **Configurable Auto-Buy** - Automatically purchases bait after set number of catches
- **Point-Based Navigation** - Click recording system for purchase sequence
- **Customizable Amount** - Set exactly how much bait to purchase
- **Loop Counter** - Configure purchases every N fishing loops

### 🎮 **User Interface**

- **Modern GUI** - Clean, intuitive tkinter interface
- **Always-On-Top** - GUI stays visible while gaming
- **Visual Overlay** - Draggable, resizable detection area overlay
- **Status Indicators** - Real-time feedback on bot state
- **Hotkey Support** - Global hotkeys work even when game is focused

### ⚙️ **Advanced Controls**

- **Tunable PD Parameters** - Adjust Kp and Kd for optimal performance
- **Timing Configuration** - Customize scan timeout and wait periods
- **Rebindable Hotkeys** - Change F1/F2/F3 keys to your preference

---

## 📋 Prerequisites

- **Windows 10/11** (64-bit recommended)
- **Python 3.8 or higher**
- **Administrator privileges** (required for global hotkeys)
- **Roblox** with Grand Piece Online

---

## 🚀 Quick Start

### **Installation**

1. **Clone or download this repository**

   ```bash
   git clone https://github.com/yourusername/gpo-autofish.git
   cd gpo-autofish
   ```

2. **Install required packages**

   ```bash
   pip install -r requirements.txt
   ```

3. **Run as Administrator** (required for hotkeys)

   - Right-click `run_as_admin.bat`
   - Click "Run as administrator"

   OR

   - Right-click Command Prompt → "Run as administrator"
   - Navigate to project folder
   - Run: `python z.py`

---

## 📖 Usage Guide

### **Step 1: Setup Overlay**

1. Launch the application
2. Press **F2** to show the detection overlay (blue box)
3. Drag and resize the overlay to cover the fishing bar area
4. Press **F2** again to hide overlay

### **Step 2: Configure Auto-Purchase (Optional)**

1. Check "Auto Purchase Settings" → "Enabled"
2. Click each Point button (1-4) and click screen locations:
   - **Point 1**: Shop button/NPC
   - **Point 2**: Confirm button
   - **Point 3**: Quantity input field
   - **Point 4**: Final cursor position
3. Set desired purchase amount and loops per purchase

### **Step 3: Start Fishing**

1. In-game, equip your fishing rod
2. Position your character at a fishing spot
3. Press **F1** to start the automation
4. The bot will:
   - Cast the line automatically
   - Track the fish using PD controller
   - Hold/release click to keep green bar on fish
   - Re-cast when fish escapes or is caught
   - Auto-purchase bait (if enabled)

### **Step 4: Stop**

- Press **F1** to stop the fishing loop
- Press **F3** to exit the application

---

## ⌨️ Hotkeys

| Key    | Function         | Description                   |
| ------ | ---------------- | ----------------------------- |
| **F1** | Toggle Main Loop | Start/Stop fishing automation |
| **F2** | Toggle Overlay   | Show/Hide detection area      |
| **F3** | Exit             | Close the application         |

> 💡 **Tip**: All hotkeys can be rebound in the GUI settings

---

## 🎛️ Configuration

### **PD Controller Tuning**

- **Kp (Proportional)**: `0.1` - Higher = more aggressive corrections
- **Kd (Derivative)**: `0.5` - Higher = smoother, less oscillation

### **Timing Settings**

- **Scan Timeout**: `15s` - Time before recasting (no detection)
- **Wait After Loss**: `1.0s` - Delay after losing fish before recasting

### **Auto-Purchase**

- **Amount**: Number of bait items to purchase
- **Loops per Purchase**: Buy after every N successful catches

---

## 🔧 Compilation (Optional)

Create a standalone executable without requiring Python installation:

### **Using the Batch Script**

```bash
CompileCommand.bat
```

### **Manual Compilation**

```bash
pyinstaller --onefile --windowed --name "GPO_Fishing_Macro" z.py
```

The executable will be in the `dist/` folder.

> ⚠️ **Note**: PyInstaller must be installed: `pip install pyinstaller`

---

## 🐛 Troubleshooting

### **Hotkeys Don't Work**

- ✅ Run the program as Administrator
- ✅ Check Windows Defender isn't blocking keyboard library

### **Screen Capture Fails**

- ✅ Install MSS: `pip install mss`
- ✅ Update graphics drivers
- ✅ Disable hardware acceleration in Roblox

### **Fish Detection Issues**

- ✅ Ensure overlay covers the entire fishing bar
- ✅ Adjust PD controller settings
- ✅ Check lighting/graphics settings in game

### **Auto-Purchase Not Working**

- ✅ Verify all 4 points are set correctly
- ✅ Increase click delays in code if too fast
- ✅ Make sure character is near shop NPC

---

## 📦 Dependencies

```
tkinter       # GUI framework (included with Python)
keyboard      # Global hotkey support
pynput        # Mouse click capture
pywin32       # Windows API access
mss           # Screen capture (Windows 11 compatible)
numpy         # Array operations
```

Install all at once:

```bash
pip install keyboard pynput pywin32 mss numpy
```

---

## 🤝 Credits

### **Original Developer**

**asphalt_cake** - Core development, PD controller implementation, original concept and design

### **Public Release**

**Ariel** - Rebranding, bug fixes, Windows 11 compatibility updates, documentation, and public release

### **Special Thanks**

- Python community for excellent libraries
- Grand Piece Online community
- All beta testers and contributors

---

## ⚖️ License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```
Copyright (c) 2025 asphalt_cake (Original Developer)
Copyright (c) 2025 Ariel (Public Release & Rebranding)
```

---

## ⚠️ Disclaimer

This tool is for **educational purposes only**. Use of automation in Roblox games may violate the Terms of Service. Use at your own risk. The developers are not responsible for any account actions taken by Roblox.

**We do not endorse cheating or exploiting.** This project demonstrates:

- Computer vision techniques
- Control theory (PD controllers)
- GUI development
- Screen automation

---

## 🌟 Star History

If you found this project helpful, please consider giving it a star! ⭐

---

<div align="center">

**Made with ❤️ by asphalt_cake & Ariel**

[Report Bug](https://github.com/yourusername/gpo-autofish/issues) · [Request Feature](https://github.com/yourusername/gpo-autofish/issues)

</div>
