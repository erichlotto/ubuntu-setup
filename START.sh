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
