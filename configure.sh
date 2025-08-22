#!/bin/bash

set -e

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update && sudo apt -y install gcc-arm-linux-gnueabihf qemu-system
  arm-linux-gnueabihf-gcc -v
  qemu-system-arm -version
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install arm-linux-gnueabihf-binutils qemu
	arm-none-eabi-gcc -v
	qemu-system-arm -version
fi
