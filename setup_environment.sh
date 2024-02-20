APP_NAME=what-a-year-captain
PROJECT_PATH=$HOME/$APP_NAME

create_crontab() {
    echo "15 13 * * * $PROJECT_PATH/set_wallpaper.sh" >> /tmp/crontab.tmp

    # Install the new crontab file
    crontab /tmp/crontab.tmp

    echo "Cronjob scheduled: $(crontab -l)"
    
    # Remove temporary file
    rm /tmp/crontab.tmp
}

create_crontab
if [ ! -d "$PROJECT_PATH" ]; then
    mkdir $PROJECT_PATH
    git clone https://github.com/RodrigoEC/$APP_NAME.git $PROJECT_PATH

    echo "$APP_NAME repository created at $PROJECT_PATH"

fi
