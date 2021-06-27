#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    # Uninstall PhpStorm
    sudo rm -rf /usr/local/bin/phpstorm
    sudo rm -rf /opt/PhpStorm-202.6397.115
    sudo rm -rf ~/.config/JetBrains/PhpStorm*
    sudo rm -rf ~/.cache/Jetbrains/Phpstorm*
else
    sudo snap remove phpstorm
fi