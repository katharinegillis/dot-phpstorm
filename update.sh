#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    echo "Please check for updates by running PhpStorm as root."
else
    sudo snap refresh phpstorm --classic
fi