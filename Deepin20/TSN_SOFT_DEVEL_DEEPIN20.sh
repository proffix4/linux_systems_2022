#!/bin/sh

sudo apt-get install git -y
git config --global user.name "proffix4"
git config --global user.email "proffix4@gmail.com"

sudo apt install qemu-kvm android-tools-adb -y
sudo adduser tsn kvm
sudo chown tsn /dev/kvm
sudo chmod o+x /dev/kvm
sudo chmod 777 -R /dev/kvm
sudo usermod -aG plugdev $LOGNAME

sudo apt install build-essential gdb default-jdk -y

sudo apt install python3 python3-pip python3-pyqt5 python3-pyqt5.qtsql qttools5-dev-tools build-essential python3-tk python3-matplotlib -y
sudo apt install pyqt5-dev-tools libgtk-3-dev -y
sudo apt-get install python3-dev -y
sudo apt-get install libjpeg62-turbo-dev -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
pip3 install setuptools numpy pandas openpyxl xlrd
pip3 install python-docx XlsxWriter openpyxl ebooklib pykson bs4
pip3 install pyinstaller Pillow
pip3 install wxPython

pip3 install PyQtWebEngine
pip3 install PyQt5-sip --upgrade
