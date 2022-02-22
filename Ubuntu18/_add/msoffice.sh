#!/bin/sh
cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks

winetricks msxml3 riched20 riched30 allfonts msxml4 msxml6 corefonts tahoma

#... Потом установить MS Office с смонтированного образа + sp3