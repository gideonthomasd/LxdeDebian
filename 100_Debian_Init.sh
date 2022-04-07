#!/bin/bash

mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Pictures
mkdir ~/Music
mkdir ~/Videos
mkdir ~/.config

sudo cp sources.list /etc/apt/sources.list

sudo apt update && sudo apt upgrade

sudo apt install -y vlc libavcodec-extra
sudo apt install -y libdvdread8 libdvdcss2

sudo dpkg-reconfigure libdvd-pkg

sudo apt install -y git xorg pavucontrol pulseaudio lightdm xarchiver unzip network-manager network-manager-gnome

sudo service NetworkManager restart

sudo apt install -y alsa-utils alsa-oss alsamixergui apulse

sudo alsactl init
