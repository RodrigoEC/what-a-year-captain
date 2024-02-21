echo "50 21 * * * bash $(pwd)/set_wallpaper.sh $(pwd)" >> /tmp/crontab.tmp

# Install the new crontab file
crontab /tmp/crontab.tmp

echo "Cronjob scheduled: $(crontab -l)"

rm /tmp/crontab.tmp

chmod +x set_wallpaper.sh
