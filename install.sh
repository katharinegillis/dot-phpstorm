#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    # Install dependencies
    sudo apt-get install -y libnss3 libnspr4 libatk1.0 libatk-bridge2.0 libxcursor1 libgbm-dev libpango-1.0 libpangocairo-1.0 libcups2 libatspi2.0 libxss1

    # Download PhpStorm standalone
    wget https://download.jetbrains.com/webide/PhpStorm-2020.2.tar.gz

    # Install PhpStorm
    sudo tar -xzf PhpStorm-*.tar.gz -C /opt
    sudo ln -s /opt/PhpStorm-202.6397.115/bin/phpstorm.sh /usr/local/bin/phpstorm

    # Clean up
    sudo rm -rf PhpStorm-2020.2.tar.gz
elif [ "$SYSTEM" == "linux" ]; then
    sudo snap install phpstorm --classic
elif [ "$SYSTEM" == "mac" ]; then
    brew install --cask phpstorm
fi
