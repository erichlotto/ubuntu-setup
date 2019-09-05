#!/bin/bash
clear
echo "AWESOME! Let's begin building your new system... 🤓"
sleep 3

# CHECK IF USING ROOT
if [ $EUID > 0 ]
  then echo "Please run with sudo 🔒"
  exit
fi
echo "sudo privileges granted 🔑🔓"

cd ~
mkdir -p ubuntu-setup && cd ubuntu-setup
wget -nv https://github.com/erichlotto/ubuntu-setup/blob/master/helpers.sh
wget -nv https://github.com/erichlotto/ubuntu-setup/blob/master/install-chrome.sh
