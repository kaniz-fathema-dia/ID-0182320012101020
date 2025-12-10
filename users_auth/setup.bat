@echo off
REM ========================================
REM Flutter Currency Converter Setup Script
REM ========================================
REM This script helps setup the Flutter project

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║  Currency Converter App - Setup Assistant            ║
echo ║  Flutter Project Setup                               ║
echo ╚══════════════════════════════════════════════════════╝
echo.

REM Check if Flutter is installed
echo [1/5] Checking Flutter installation...
flutter --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Flutter is NOT installed!
    echo.
    echo Download and install Flutter from:
    echo https://flutter.dev/docs/get-started/install
    echo.
    pause
    exit /b 1
)
echo ✓ Flutter is installed

REM Check if Dart is installed (should come with Flutter)
echo.
echo [2/5] Checking Dart installation...
dart --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Dart is NOT installed!
    pause
    exit /b 1
)
echo ✓ Dart is installed

REM Run Flutter Doctor
echo.
echo [3/5] Running Flutter Doctor...
flutter doctor
echo.

REM Clean project
echo [4/5] Cleaning project...
call flutter clean
echo ✓ Project cleaned

REM Get dependencies
echo.
echo [5/5] Getting dependencies...
call flutter pub get
echo ✓ Dependencies fetched

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║  ✓ Setup Complete!                                   ║
echo ╚══════════════════════════════════════════════════════╝
echo.
echo Next steps:
echo 1. Connect your Android device or start an emulator
echo 2. Run: flutter run
echo 3. Or open Android Studio and click the Run button
echo.
echo For detailed instructions, see: SETUP_GUIDE_FOR_FRIEND.md
echo.
pause
