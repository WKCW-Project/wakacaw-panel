#!/bin/bash
set -e

echo "Setting up Android SDK paths..."
export ANDROID_HOME=$HOME/android-sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH

yes | sdkmanager --licenses
sdkmanager "platforms;android-34" "build-tools;34.0.0"