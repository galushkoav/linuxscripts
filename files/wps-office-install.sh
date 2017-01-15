#!/bin/bash
echo "Installing wps office 64"
wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
sudo dpkg -i wps-office*.deb
sudo apt-get install -f -y
sudo apt-get install zip -y

sudo rm wps-office*
wget https://itc-life.ru/wp-content/uploads/2015/12/office6.zip

unzip office6.zip
sudo cp -r mui  /opt/kingsoft/wps-office/office6
sudo rm office6.zip
sudo rm office6.zip.*
sudo rm -r mui