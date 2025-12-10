#!/bin/bash

# ========================================
# Flutter Currency Converter Setup Script
# ========================================
# This script helps setup the Flutter project

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║  Currency Converter App - Setup Assistant            ║"
echo "║  Flutter Project Setup                               ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# Check if Flutter is installed
echo "[1/5] Checking Flutter installation..."
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is NOT installed!"
    echo ""
    echo "Download and install Flutter from:"
    echo "https://flutter.dev/docs/get-started/install"
    echo ""
    exit 1
fi
echo "✓ Flutter is installed"

# Check if Dart is installed
echo ""
echo "[2/5] Checking Dart installation..."
if ! command -v dart &> /dev/null; then
    echo "❌ Dart is NOT installed!"
    exit 1
fi
echo "✓ Dart is installed"

# Run Flutter Doctor
echo ""
echo "[3/5] Running Flutter Doctor..."
flutter doctor
echo ""

# Clean project
echo "[4/5] Cleaning project..."
flutter clean
echo "✓ Project cleaned"

# Get dependencies
echo ""
echo "[5/5] Getting dependencies..."
flutter pub get
echo "✓ Dependencies fetched"

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║  ✓ Setup Complete!                                   ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "Next steps:"
echo "1. Connect your Android device or start an emulator"
echo "2. Run: flutter run"
echo "3. Or open Android Studio and click the Run button"
echo ""
echo "For detailed instructions, see: SETUP_GUIDE_FOR_FRIEND.md"
echo ""
