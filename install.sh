SRC=~/.dotfiles

git submodule init
git submodule update --recursive

mkdir -p ~/.config
mkdir -p ~/.config/inkscape

ln -sf $SRC/zprofile ~/.zprofile
ln -sf $SRC/zshrc ~/.zshrc
ln -sf $SRC/zaliases ~/.zaliases
ln -sf $SRC/zcompdef ~/.zcompdef
ln -sf $SRC/zexports ~/.zexports
ln -sf $SRC/zhashes ~/.zhashes

ln -sf $SRC/cookiecutterrc ~/.cookiecutterrc
ln -sf $SRC/gitignore ~/.gitignore
ln -sf $SRC/gitconfig ~/.gitconfig
ln -sf $SRC/gmrunrc ~/.gmrunrc
ln -sf $SRC/inputrc ~/.inputrc
ln -sf $SRC/pythonrc ~/.pythonrc
ln -sf $SRC/xinitrc ~/.xinitrc
ln -sf $SRC/alacritty ~/.config
ln -sf $SRC/inkspace/palettes ~/.config/inkscape
ln -sf $SRC/matplotlib ~/.config
ln -sf $SRC/openbox ~/.config
ln -sf $SRC/qutebrowser ~/.config
ln -sf $SRC/zathura ~/.config
ln -sf $SRC/user-dirs.dirs ~/.config/
ln -sf $SRC/user-dirs.locale ~/.config/
