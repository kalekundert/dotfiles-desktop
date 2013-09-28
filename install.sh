#!/usr/bin/env sh

# Create symbolic links to the scripts being installed.  This requires figuring 
# out where they these scripts are located on the filesystem, but I can make a 
# pretty good guess by parsing the path in front of $0.  But I also allow the 
# user to manually enter a path.

SCRIPT_PATH=$(readlink -f $0)
EXPECTED_PATH=$(dirname $SCRIPT_PATH)

PROMPT="Please confirm the path to the installation: "
read -p "$PROMPT" -e -i "$EXPECTED_PATH" INSTALL_PATH

if [ ! $INSTALL_PATH -ef ~/.shell ]; then 
    ln -nsf $INSTALL_PATH ~/.shell
fi

ln -nsf $INSTALL_PATH/setup.sh ~/.zshrc
ln -nsf $INSTALL_PATH/setup.sh ~/.bashrc
ln -nsf $INSTALL_PATH/setup.sh ~/.bash_profile
ln -nsf $INSTALL_PATH/colors.ls ~/.dir_colors

# If it doesn't already exist, create a shell script that will provide access 
# to some information about the user.  More specifically, different scripts 
# will want to know the users's name, email address, and prompt preferences.

SYSTEM_SCRIPT=$INSTALL_PATH/helpers/10.system.sh
CURRENT_USER=$(whoami);     HOME_USER=""
CURRENT_HOST=$(hostname);   HOME_HOST=""

if [ -e $SYSTEM_SCRIPT ]; then
    source $SYSTEM_SCRIPT
fi

if [ -z "$HOME_USER" ]; then
    read -p "Please confirm your primary user name: " -e -i "$CURRENT_USER" HOME_USER
    echo "export HOME_USER=\"$HOME_USER\"" >> $SYSTEM_SCRIPT
fi

if [ -z "$HOME_HOST" ]; then
    read -p "Please confirm your primary host machine: " -e -i "$CURRENT_HOST" HOME_HOST
    echo "export HOME_HOST=\"$HOME_HOST\"" >> $SYSTEM_SCRIPT
fi

