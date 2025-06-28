#!/bin/bash
set -e

TARGET=$1

case $TARGET in
    linux)
        flutter build linux
        mkdir -p /app/build/executables
        cp -rv /app/build/linux/x64/release/bundle/ /app/build/executables/bundle
        echo "Run the flutter_frontend/build/executables/bundle/flutter_frontend binary."
    ;;
    windows)
        flutter build windows
        echo "Windows needs more testing."
    ;;
    apk|android)
        flutter build apk
        mv build/app/outputs/flutter-apk/app-release.apk executables/
        echo "Run the executables/app-release apk."
    ;;
    ios|iphone)
        flutter build ios
        echo "iOS needs more testing."
    ;;
esac
