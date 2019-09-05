#!/bin/bash

# CHECK IF USING ROOT
if [[ $EUID > 0 ]]
  then echo "Please run as root"
  exit
fi

echo "Creating file templates..."

# CREATE FILE TEMPLATES (icon should be placed in ~/.local/share/icons)
echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My Page</title>
  </head>
  <body></body>
</html>' > ~/Templates/index.html

echo "#!/bin/bash
" >  ~/Templates/script.sh
sudo chmod +x ~/Templates/script.sh

touch ~/Templates/document

echo "Installing Guake..."
sudo apt install -y guake

echo "Installing Tmux..."
sudo apt install -y tmux

echo "Installing Enpass..."
sudo echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list
sudo wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
sudo apt update
sudo apt install -y enpass

echo "Installing Ledger Live..."
curl https://lh3.googleusercontent.com/vxu1hbx9CIeneYOSLrExa3mbpKHwok-Tg831G14hh7jSA38Xcmpv19HrIloQi-XjwViB --create-dirs -o ~/.local/share/icons/appimagekit-ledger-live-desktop.png
curl https://download-live.ledger.com/releases/latest/download/linux --create-dirs -o ~/.local/share/applications/ledger-live.AppImage
sudo chmod +x ~/.local/share/applications/ledger-live.AppImage
~/.local/share/applications/ledger-live.AppImage

echo "Installing snapcraft..."
sudo apt install snapd

echo "Installing Visual Studio Code..."
sudo snap install --classic code # or code-insiders

