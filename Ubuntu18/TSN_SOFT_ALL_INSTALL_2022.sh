#!/bin/sh

sudo apt install git -y
git config --global user.name "proffix4"
git config --global user.email "proffix4@gmail.com"

sudo apt install gawk m4 libwxgtk3.0-dev libpcre2-dev libxerces-c-dev libspdlog-dev libuchardet-dev libssh-dev libssl-dev  libsmbclient-dev libnfs-dev libneon27-dev libarchive-dev cmake g++ -y
git clone https://github.com/elfmz/far2l
cd far2l
mkdir build
cd build
cmake -DUSEWX=yes -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc --all)
sudo make install
sudo ldconfig

sudo apt install qemu-kvm android-tools-adb -y
sudo adduser tsn kvm
sudo chown tsn /dev/kvm
sudo chmod o+x /dev/kvm
sudo chmod 777 -R /dev/kvm
sudo usermod -aG plugdev $LOGNAME

sudo apt install nasm edb-debugger -y
sudo apt install build-essential gdb -y
sudo apt install default-jdk -y

sudo apt install python3-pip python3-pyqt5 python3-pyqt5.qtsql qttools5-dev-tools build-essential qt5-default python3-tk python3-matplotlib -y
sudo apt install pyqt5-dev-tools python3-dev libjpeg8-dev -y
pip3 install setuptools numpy pandas openpyxl xlrd
pip3 install python-docx XlsxWriter openpyxl 
pip3 install ebooklib pykson bs4

sudo apt-get install gthumb pdfshuffler retext qbittorrent gparted gtkhash flameshot img2pdf okular okular-extra-backends -y
sudo apt install synaptic gdebi gnome-system-tools dconf-editor gnome-tweaks chrome-gnome-shell gnome-tweak-tool kate xterm smartmontools -y
pip3 install dataclasses vobject

sudo apt install kcolorchooser imagination furiusisomount mediainfo-gui wget gprename xfburn snapd clementine vlc iotop bsdiff -y

sudo add-apt-repository ppa:cartes/drawing
sudo apt-get update
sudo apt install drawing

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

sudo snap install whatsdesk
sudo snap install telegram-desktop

sudo apt install adwaita-icon-theme-full -y
sudo apt-get install unity-gtk-module -y
sudo apt install numix-gtk-theme numix-icon-theme arc-theme -y

sudo apt install p7zip-full p7zip-rar -y

sudo apt install ffmpeg v4l2loopback-dkms -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y

sudo apt install leap-archive-keyring -y
echo "deb https://deb.leap.se/client release buster" | sudo tee -a /etc/apt/sources.list.d/leap.list
sudo apt update
sudo apt install riseup-vpn -y

sudo apt install valac libgranite-dev meson gettext -y
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

sudo tune2fs -o discard /dev/nvme0n1p3

pip3 install pyinstaller
pip3 install Pillow
pip3 install wxPython

sudo add-apt-repository ppa:sebastian-stenzel/cryptomator 
sudo apt-get update
sudo apt install cryptomator -y

sudo apt install libcanberra-gtk-module -y

sudo apt autoremove -y
