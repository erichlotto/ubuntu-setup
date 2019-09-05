#!/bin/bash

mkdir -p ~/.local/share/icons
wget -O ~/.local/share/icons/appimagekit-ledger-live-desktop.png https://lh3.googleusercontent.com/vxu1hbx9CIeneYOSLrExa3mbpKHwok-Tg831G14hh7jSA38Xcmpv19HrIloQi-XjwViB
mkdir -p ~/.local/share/applications
wget -O ~/.local/share/applications/ledger-live.AppImage https://download-live.ledger.com/releases/latest/download/linux
sudo chmod +x ~/.local/share/applications/ledger-live.AppImage
~/.local/share/applications/ledger-live.AppImage
