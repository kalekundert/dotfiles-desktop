#!/usr/bin/env sh

SYSTEM_SCRIPT=$INSTALL_PATH/configure.d/10.system.sh

HOME_USER=""
HOME_HOST=""
FULL_NAME=""
EMAIL=""

if [ -e $SYSTEM_SCRIPT ]; then
    source $SYSTEM_SCRIPT
fi

if [ -z "$HOME_USER" ]; then
    read -p "Please confirm your primary user name: " -e -i $(whoami) HOME_USER
    echo "export HOME_USER=\"$HOME_USER\"" >> $SYSTEM_SCRIPT
fi

if [ -z "$HOME_HOST" ]; then
    read -p "Please confirm your primary host machine: " -e -i $(hostname) HOME_HOST
    echo "export HOME_HOST=\"$HOME_HOST\"" >> $SYSTEM_SCRIPT
fi

if [ -z "$FULL_NAME" ]; then
    DEFAULT_FULL_NAME=$(getent passwd `whoami` | cut -d ':' -f 5 | cut -d ',' -f 1)
    read -p "Please confirm your full name: " -e -i "$DEFAULT_FULL_NAME" FULL_NAME
    echo "export FULL_NAME=\"$FULL_NAME\"" >> $SYSTEM_SCRIPT
fi

if [ -z "$EMAIL" ]; then
    read -p "Please provide your email address: " -e EMAIL
    echo "export EMAIL=\"$EMAIL\"" >> $SYSTEM_SCRIPT
fi
