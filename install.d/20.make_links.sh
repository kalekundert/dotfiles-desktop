#!/usr/bin/env sh

# Link the configure script so that the shells know where to find it.

ln -nsf $INSTALL_PATH/configure.sh ~/.zshrc
ln -nsf $INSTALL_PATH/configure.sh ~/.bashrc
ln -nsf $INSTALL_PATH/configure.sh ~/.bash_profile

# Tell programs where various kinds of media should be downloaded.

mkdir -p ~/.config
ln -nsf $INSTALL_PATH/install.d/resources/user-dirs.dirs ~/.config/
ln -nsf $INSTALL_PATH/install.d/resources/user-dirs.locale ~/.config/
