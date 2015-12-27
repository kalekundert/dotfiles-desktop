#!/usr/bin/env sh

if hash zsh &> /dev/null; then
    chsh -s $(which zsh) $HOME_USER
fi
