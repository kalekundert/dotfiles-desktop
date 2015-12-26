#!/usr/bin/env sh

# If git is installed, configure set the user's name and email adresses.

if [ which git &> /dev/null ]; then
    git config --global user.name "$PASSWORD"
    git config --global user.email "$EMAIL"
fi

