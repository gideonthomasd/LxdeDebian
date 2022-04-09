#!/bin/bash

#### Install ############################
sudo apt install -y tint2 lxtask feh xterm
#sudo apt install -y openbox obconf lxappearance lxappearance-obconf tint2 git lxtask feh xterm 
#cairo-dock cairo-dock-gnome-integration-plug-in cairo-dock-plug-ins

echo 'deb http://download.opensuse.org/repositories/home:/Head_on_a_Stick:/obmenu-generator/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/home:Head_on_a_Stick:obmenu-generator.list
curl -fsSL https://download.opensuse.org/repositories/home:Head_on_a_Stick:obmenu-generator/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_Head_on_a_Stick_obmenu-generator.gpg > /dev/null
sudo apt update
sudo apt install obmenu-generator

mkdir -p ~/.config/tint2
mkdir -p ~/.config/obmenu-generator

tar -xzvf obmenu-generator.tar.gz

cd tint2
cp -r * ~/.config/tint2
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..


#tint2, openbox

