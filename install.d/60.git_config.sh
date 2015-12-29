#!/usr/bin/env sh

if [ $EUID -ne 0 ]; then
    git config --global user.name "$FULL_NAME"
    git config --global user.email "$EMAIL"
    git config --global core.excludesFile "~/.gitignore"
fi

