#!/bin/bash

sudo snap install pycharm-community --edge --classic
#sudo snap install pycharm-community --classic
sudo apt install -y python3-tk
sudo apt install -y sqlite3   # pip install pysqlite3
cp /var/lib/snapd/desktop/applications/*.desktop ~/.local/share/applications/
