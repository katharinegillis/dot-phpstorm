#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    echo "Please check for updates by running PhpStorm as root."
elif [ "$SYSTEM" == "linux" ]; then
    sudo snap refresh phpstorm --classic
elif [ "$SYSTEM" == "mac" ]; then
    brew upgrade --cask phpstorm
fi