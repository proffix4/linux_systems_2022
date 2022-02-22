sudo apt-get install
sudo apt-get install build-essential git
sudo apt-get install cmake
sudo apt-get install qtbase5-dev qttools5-dev qttools5-dev-tools qtwebengine5-dev
sudo apt-get install python3-dev python3-pip python3-lxml python3-six python3-css-parser python3-dulwich
sudo apt-get install python3-tk python3-pyqt5 python3-pyqtwebengine python3-html5lib python3-regex python3-pillow python3-cssselect python3-chardet

git clone https://github.com/Sigil-Ebook/Sigil.git
cd Sigil
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../
make -j$(nproc --all)
sudo make install
sudo ldconfig
