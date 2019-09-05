#!/bin/bash

sudo sh -c 'echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list'
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo apt-key add -
sudo apt update
sudo apt install -qq -y enpass
