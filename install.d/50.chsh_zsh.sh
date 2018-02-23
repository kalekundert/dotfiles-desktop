#!/usr/bin/env sh

if hash zsh &> /dev/null; then
    echo "$ chsh -s $(which zsh)"
    chsh -s $(which zsh)
fi
