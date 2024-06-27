SRC=~/.dotfiles-desktop

git submodule init
git submodule update --recursive

mkdir -p ~/.config
mkdir -p ~/.config/emborg
mkdir -p ~/.config/inkscape
mkdir -p ~/.config/sparekeys
mkdir -p ~/.local/share/themes

# Load the desktop profile before the base profile, so that the first $PATH
# entries come fron the base dotfiles.
ln -sf $SRC/zprofile.d/desktop.zsh ~/.zprofile.d/40-desktop.zsh

# Load the desctop rc-files after the base rc-files, so the former can depend
# on the latter, if convenient.
ln -sf $SRC/zshrc.d/desktop.zsh ~/.zshrc.d/60-desktop.zsh
ln -sf $SRC/zshrc.d/research.zsh ~/.zshrc.d/60-research.zsh

ln -sf $SRC/alacritty ~/.config
ln -sf $SRC/emborg/home ~/.config/emborg
ln -sf $SRC/emborg/settings ~/.config/emborg
ln -sf $SRC/exmemo ~/.config
ln -sf $SRC/fontconfig ~/.config
ln -sf $SRC/freezerbox ~/.config
ln -sf $SRC/gmrunrc ~/.gmrunrc
ln -sf $SRC/inkspace/palettes ~/.config/inkscape
ln -sf $SRC/matplotlib ~/.config
ln -sf $SRC/mimeapps.list ~/.config
ln -sf $SRC/openbox ~/.config
ln -sf $SRC/openbox/themes/minimalist ~/.local/share/themes
ln -sf $SRC/qutebrowser ~/.config
ln -sf $SRC/sparekeys/config.toml ~/.config/sparekeys
ln -sf $SRC/stepwise ~/.config
ln -sf $SRC/user-dirs.dirs ~/.config
ln -sf $SRC/user-dirs.locale ~/.config
ln -sf $SRC/Xcompose ~/.Xcompose
ln -sf $SRC/xinitrc ~/.xinitrc
ln -sf $SRC/zathura ~/.config
