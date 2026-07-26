#!/bin/bash
set -e

echo "Updating system..."
sudo apt update
sudo apt upgrade -y

echo "Installing required packages..."
sudo apt install -y curl wget unzip net-tools vim git

echo "Downloading Wazuh installer..."
curl -sO https://packages.wazuh.com/4.12/wazuh-install.sh
chmod +x wazuh-install.sh

echo "Installing Wazuh..."
sudo ./wazuh-install.sh -a

echo "Wazuh installation completed."