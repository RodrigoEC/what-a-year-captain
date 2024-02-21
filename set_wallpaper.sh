#!/bin/bash

CURRENT_PATH=$(pwd)

cd $1

echo "$(date +%F_%T) - Running set_wallpaper script" >> $1/set_wallpaper.log

python3 $1/what_a_year.py

echo "$(date +%F_%T) - Running what_a_year script" >> $1/set_wallpaper.log

# gsettings set org.gnome.desktop.background picture-uri $1/current_date.png
# # Check if the command executed successfully
# if [ $? -eq 0 ]; then
#     echo "$(date +%F_%T) - Successful! gsettings set org.gnome.desktop.background picture-uri" >> $1/set_wallpaper.log
# else
#     echo "$(date +%F_%T) - Gone wrong! gsettings set org.gnome.desktop.background picture-uri" >> $1/set_wallpaper.log
# fi

gsettings set org.gnome.desktop.background picture-uri-dark $1/current_date.png

# Check if the command executed successfully
if [ $? -eq 0 ]; then
    echo "$(date +%F_%T) - Successful! gsettings set org.gnome.desktop.background picture-uri-dark" >> $1/set_wallpaper.log
else
    echo "$(date +%F_%T) - Gone wrong! gsettings set org.gnome.desktop.background picture-uri-dark" >> $1/set_wallpaper.log
fi



echo "$(date +%F_%T) - Setting background" >> $1/set_wallpaper.log

cd $CURRENT_PATH