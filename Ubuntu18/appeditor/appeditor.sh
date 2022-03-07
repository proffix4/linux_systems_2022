sudo apt install valac libgranite-dev meson gettext -y
rm -R build -f
meson build
cd build
meson configure -Dprefix=/usr
ninja
sudo ninja install
