#!/bin/bash

###############################Install flatpak and application########################

sudo apt install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.unrud.VideoDownloader
flatpak install flathub org.xiphos.Xiphos

#sudo apt install -y snapd
