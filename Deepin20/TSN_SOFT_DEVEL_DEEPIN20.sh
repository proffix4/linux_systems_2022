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
python3 -m pip install --user --upgrade pip
python3 -m pip install setuptools numpy pandas openpyxl xlrd
python3 -m pip install python-docx XlsxWriter openpyxl ebooklib pykson bs4
python3 -m pip install pyinstaller Pillow
python3 -m pip install wxPython

python3 -m pip install PyQtWebEngine
python3 -m pip install PyQt5-sip --upgrade

