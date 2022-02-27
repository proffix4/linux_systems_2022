sudo apt install valac libgranite-dev meson gettext
meson build
cd build
meson configure -Dprefix=/usr
ninja
sudo ninja install
