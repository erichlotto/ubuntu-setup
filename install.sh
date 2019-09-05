#!/bin/bash
clear
echo "AWESOME! Let's begin building your new system... 🤓"
sleep 1

# CHECK IF USING ROOT
echo "We need sudo privileges from now on 🔒"

sudo id>null && echo "sudo privileges granted 🔑" || exit


cd ~
rm -rf .ubuntu-setup
mkdir -p .ubuntu-setup && cd .ubuntu-setup
echo -n "📄 Downloading scripts... "
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/helpers.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/create-templates.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-chrome.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-enpass.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-snapcraft.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-vscode.sh
echo "DONE"

echo -n "Fixing permissions... "
sudo chmod +x *
echo "DONE"

echo "Installing Chrome..."
./install-chrome.sh
echo "DONE"
