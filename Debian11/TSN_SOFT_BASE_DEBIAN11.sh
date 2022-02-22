#!/bin/sh

sudo apt upgrade

sudo apt install wget pavucontrol gthumb pdfshuffler qbittorrent gparted gtkhash obs-studio xfburn retext flameshot -y
sudo apt install redshift-gtk p7zip-full neofetch -y

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
