#!/bin/bash -e


cd rofi
cd applets
cd applets
chmod +x *.sh
cd ..
cd ..
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

cd i3
cd polybar
chmod +x *.sh
cd ..
cd bin
chmod +x *.sh
cd ..
cd ..

cd bspwm
chmod +x bspwmrc
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd openbox
chmod +x *.sh
cd ..

#########Install Directories & Files######

mkdir -p ~/.local/share/applications
mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf
mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p ~/.config/dunst
cp dunstrc ~/.config/dunst/dunstrc

mkdir -p $HOME"/.config/bspwm"

mkdir -p ~/.config/rofi
mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/xfce4/terminal
mkdir -p ~/.config/lxterminal
mkdir -p ~/.config/geany

cd geany
cp -r * ~/.config/geany
cd ..

cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp terminalrc ~/.config/xfce4/terminal/terminalrc
cp bashrc ~/.bashrc

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..


############# Bspwm #####################

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

##########################################

#### Install i3 ##########################
mkdir -p ~/.config/i3

cd i3
cp -r * ~/.config/i3
cd ..
##########################################

#### Install fonts #######################

mkdir -p ~/.local/share/fonts

cd font
cp -r * ~/.local/share/fonts
cd ..

cd font2
cp -r * ~/.local/share/fonts
cd ..

cd font3
cp -r * ~/.local/share/fonts
cd ..

###########################################

####### Install jgmenu ####################

sudo dpkg -i jgmenu_4.4.0-1_amd64.deb
#cp powermenu.sh ~/powermenu.sh
cp log.sh ~/log.sh

######## Wallpaper ########################

cd i3
mkdir -p ~/Pictures/wallpapers
cp wallpaper.jpg ~/Pictures/wallpapers/wallpaper.jpg
cd ..
###########################################

######## Install DWM ##############################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/Luke

cd Luke
cd statusbar
chmod +x *.sh
chmod +x sb-volume
chmod +x sb-clock
cd ..
cd ..

cd Luke
cp -r * ~/Luke
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
cp autostart.sh ~/.local/share/dwm

####### lxde Directories ###########################
mkdir -p ~/.config/libfm
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/conky

mkdir -p ~/.config/lxpanel
mkdir -p ~/.config/lxsession
mkdir -p ~/.config/lxsession-default-apps
mkdir -p ~/.config/openbox

mkdir -p ~/.local/share/plank/themes

mkdir -p ~/.icons
mkdir -p ~/.themes

tar -xzvf icons.tar.gz
tar -xzvf themes.tar.gz

cd icons
cp -r * ~/.icons
cd ..

cd themes
cp -r * ~/.themes
cd ..

cd conky
cp -r * ~/.config/conky
cd ..

cd gtk-3.0
cp -r * ~/.config/gtk-3.0
cd ..

cd libfm
cp -r * ~/.config/libfm
cd ..

cd lxpanel
cp -r * ~/.config/lxpanel
cd ..

cd lxsession
cp -r * ~/.config/lxsession
cd ..

cd lxsession-default-apps
cp -r * ~/.config/lxsession-default-apps
cd ..

cd openbox
cp -r * ~/.config/openbox
cd ..

cd plank
cd themes
cp -r * ~/.local/share/plank/themes
cd ..
cd ..

cd wallpapers
cp -r * ~/Pictures/wallpapers
cd ..

cp apple.png ~/Pictures
cp applered.png ~/Pictures

cp -r Bibata-Modern-Ice ~/.icons
cp -r Bibata-Modern-Amber ~/.icons
cp -r Bibata-Modern-Classic ~/.icons

cp Xresources ~/.Xresources


######## Ending ####################################
cd ~/Luke/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/Luke/dwmblocks
sudo make clean install

cd ~/Luke/st-transparency-scrollback
sudo make clean install



