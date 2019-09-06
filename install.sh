#!/bin/bash
clear
echo "AWESOME! Let's begin building your new system... 🤓"
sleep 1

# CHECK IF USING ROOT
echo "We need sudo privileges from now on 🔒"

sudo id>/dev/null && echo "sudo privileges granted 🔑" || exit


cd ~
rm -rf .ubuntu-setup
mkdir -p .ubuntu-setup && cd .ubuntu-setup
echo -n "📄 Downloading scripts... "
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/helpers.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/create-templates.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-guake.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-tmux.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-enpass.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-snapcraft.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-vscode.sh
wget -q https://raw.githubusercontent.com/erichlotto/ubuntu-setup/master/install-ledger-live.sh
echo "Done"

echo -n "Fixing permissions... "
sudo chmod +x *
sleep 1
echo "Done"

echo -n "Creating templates... "
./create-templates.sh
sleep 1
echo "Done"

echo "Installing Guake... 🔴"
./install-guake.sh
echo "Done 🏁"

echo "Installing Tmux... 🔴"
./install-tmux.sh
echo "Done 🏁"

echo "Installing Enpass... 🔴"
./install-enpass.sh
echo "Done 🏁"

echo "Installing Snapcraft... 🔴"
./install-snapcraft.sh
echo "Done 🏁"

echo "Installing Visual Studio Code... 🔴"
./install-vscode.sh
echo "Done 🏁"

echo "Installing Ledger Live... 🔴"
./install-ledger-live.sh
echo "Done 🏁"

cd ..
rm -rf .ubuntu-setup

echo "\n\nFINISHED."
