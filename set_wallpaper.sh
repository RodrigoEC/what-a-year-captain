APP_NAME=what-a-year-captain
CURRENT_PATH=$(pwd)

cd "$HOME/$APP_NAME"
git pull origin main

python3 what_a_year.py

gsettings set org.gnome.desktop.background picture-uri-dark {os.getcwd()}/current_date.png
gsettings set org.gnome.desktop.background picture-uri {os.getcwd()}/current_date.png

cd $CURRENT_PATH