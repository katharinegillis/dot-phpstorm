#!/usr/bin/env bash

if ls /opt/PhpStorm-* 1> /dev/null 2>&1; then
    echo "PhpStorm already installed, please check for updates by running as root"
else
    # Download PhpStorm standalone
    wget https://download.jetbrains.com/webide/PhpStorm-2020.2.tar.gz

    # Install PhpStorm
    sudo tar -xzf PhpStorm-*.tar.gz -C /opt
    sudo ln -s /opt/PhpStorm-202.6397.115/bin/phpstorm.sh /usr/local/bin/phpstorm

    # Clean up
    sudo rm -rf PhpStorm-2020.2.tar.gz
fi
