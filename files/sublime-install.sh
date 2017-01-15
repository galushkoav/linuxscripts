#!/bin/bash
echo "Installing sublime"
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo dpkg -i sublime*.deb
sudo apt-get install -f
sudo rm sublime*