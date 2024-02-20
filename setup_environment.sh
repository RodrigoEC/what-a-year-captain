APP_NAME=what-a-year-captain
create_crontab() {
    echo "0 13 * * * $HOME/$APP_NAME/set_wallpaper.sh" >> /tmp/crontab.tmp

    # Install the new crontab file
    crontab /tmp/crontab.tmp

    # Remove temporary file
    rm /tmp/crontab.tmp
}

create_crontab
if [ ! -d "$HOME/what-a-year-captain" ]; then
    mkdir $HOME/$APP_NAME
    git clone https://github.com/RodrigoEC/$APP_NAME.git $HOME/$APP_NAME
fi
