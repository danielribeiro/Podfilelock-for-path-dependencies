#!/bin/bash
set -e 
set -x
rm -rf ./Pods/ ./build/
pod install 
xcodebuild -workspace CLIConsumer.xcworkspace -scheme CLIConsumer -configuration Release -derivedDataPath build/

echo Running CLIConsumer
./build//Build/Products/Release/CLIConsumer
