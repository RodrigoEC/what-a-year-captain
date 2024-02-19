sudo echo "[Unit]
Description=My Script Description
After=network.target

[Service]
Type=oneshot
ExecStart=$(pwd)/set_wallpaper.sh

[Install]
WantedBy=multi-user.target" >> /etc/systemd/system/wallpaper_tintin.service

chmod +x $(pwd)/set_wallpaper.sh
chmod +x $(pwd)/image.png
chmod +x $(pwd)/what_a_year.py

sudo systemctl daemon-reload
sudo systemctl enable wallpaper_tintin.service
sudo systemctl start wallpaper_tintin.service
