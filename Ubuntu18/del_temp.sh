sudo rm -rf /tmp/*
sudo rm -rf /temp/*

sudo rm -rf ~/.local/share/Trash/files/*
sudo rm -rf ~/.local/share/Trash/info/*

sudo journalctl --rotate
sudo journalctl --vacuum-time=1s
sudo find /var/log/journal -name "*.journal" | xargs sudo rm 
sudo systemctl restart systemd-journald