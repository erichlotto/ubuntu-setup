#!/bin/bash
clear
echo "AWESOME! Let's begin building your new system... 🤓"
sleep 3

# CHECK IF USING ROOT
echo "Please run with sudo 🔒"
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

#if [ $EUID > 0 ]
#  then echo "Please run with sudo 🔒"
#  exit
#fi
echo "sudo privileges granted 🔑"

cd ~
rm -rf .ubuntu-setup
mkdir -p .ubuntu-setup && cd .ubuntu-setup
echo -n "📄 Downloading scripts... "
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/helpers.sh
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/create-templates.sh
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/install-chrome.sh
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/install-enpass.sh
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/install-snapcraft.sh
wget -q https://github.com/erichlotto/ubuntu-setup/blob/master/install-vscode.sh
echo "DONE"

echo -n "Fixing permissions... "
sudo chmod +x *
echo "DONE"

echo "Installing Chrome..."
./install-chrome.sh
echo "DONE"
