#!/bin/sh
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install xneur pavucontrol libreoffice-gtk3 libreoffice-help-ru -y
sudo apt install wget gthumb pdfshuffler gtkhash xfburn -y
sudo apt install neofetch -y
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
