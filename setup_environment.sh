ALIAS_NAME="update_wallpaper"
TARGET_FILE="$HOME/.bashrc"

if [ -d ~/.oh-my-zsh ]; then
    TARGET_FILE="$HOME/.zshrc"
fi

# Check if the command exists
if grep -q "$ALIAS_NAME" $TARGET_FILE; then
    echo "Command '$ALIAS_NAME' already exists."
    exit
fi

APP_NAME=what-a-year-captain
echo "update_wallpaper() {
	if [ ! -d "$HOME/what-a-year-captain" ]; then
		mkdir $HOME/$APP_NAME
		git clone https://github.com/RodrigoEC/$APP_NAME.git $HOME/$APP_NAME
    fi

	cd "$HOME/$APP_NAME"
    git pull origin main

	python3 what_a_year.py
}" >> $TARGET_FILE

