#!/bin/sh


python3 what_a_year.py

echo $(pwd)/current_year.png

gsettings set org.gnome.desktop.background picture-uri-dark $(pwd)/current_year.png
gsettings set org.gnome.desktop.background picture-uri $(pwd)/current_year.png