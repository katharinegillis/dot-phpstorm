#!/usr/bin/env bash

# Install dependencies
sudo apt-get install -y libnss3 libnspr4 libatk1.0 libatk-bridge2.0 libxcursor1 libgbm-dev libpango-1.0 libpangocairo-1.0 libcups2 libatspi2.0 libxss1

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
