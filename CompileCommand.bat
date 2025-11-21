@echo off
REM Compile GPO Fishing Macro to EXE using PyInstaller
REM Make sure PyInstaller is installed: pip install pyinstaller

echo ========================================
echo  GPO Fishing Macro - Build Script
echo ========================================
echo.

REM Check if PyInstaller is installed
python -c "import PyInstaller" 2>nul
if errorlevel 1 (
    echo ERROR: PyInstaller not found!
    echo Installing PyInstaller...
    pip install pyinstaller
    if errorlevel 1 (
        echo Failed to install PyInstaller
        pause
        exit /b 1
    )
)

echo Building EXE...
echo.

REM Build the executable
pyinstaller --onefile --windowed --name "GPO_Fishing_Macro" --icon=NONE z.py

if errorlevel 1 (
    echo.
    echo BUILD FAILED!
    pause
    exit /b 1
)

echo.
echo ========================================
echo  Build Complete!
echo  Output: dist\GPO_Fishing_Macro.exe
echo ========================================
pause
