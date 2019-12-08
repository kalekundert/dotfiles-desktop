#!/usr/bin/env sh
set -euo pipefail

RC=$(realpath $(dirname $0))
cd $RC

function check_requirement () {
  if ! which $1 &> /dev/null; then
    echo "Error: $1 not installed."
    exit 1
  fi
}
function install_antigen() {
  # Antigen is included as a submodule of this repository, so we just need to 
  # make sure that the submodules have been initialized and updated.
  git submodule init
  git submodule update
}
function install_home_dirs() {
  if [ "$EUID" -eq 0 ]; then 

    mkdir -p \
      ~/personal \
      ~/research \
      ~/hacking \
      ~/sandbox \

  fi
}
function install_symlinks () {
  ln -nsf $RC/misc/zshrc ~/.zshrc

  if [ $EUID -ne 0 ]; then
    mkdir -p ~/.config
    mkdir -p ~/.config/sakura

    ln -nsf $RC/misc/backuprc ~/.backuprc
    ln -nsf $RC/misc/cookiecutterrc ~/.cookiecutterrc
    ln -nsf $RC/misc/gitignore ~/.gitignore
    ln -nsf $RC/misc/gitconfig ~/.gitconfig
    ln -nsf $RC/misc/gmrunrc ~/.gmrunrc
    ln -nsf $RC/misc/inputrc ~/.inputrc
    ln -nsf $RC/misc/pythonrc ~/.pythonrc
    ln -nsf $RC/misc/sakura.conf ~/.config/sakura/
    ln -nsf $RC/misc/user-dirs.dirs ~/.config/
    ln -nsf $RC/misc/user-dirs.locale ~/.config/
  fi
}
function install_system_packages() {
  $RC/bin/bump-arch
}
function install_python() {
  if [ "$EUID" -eq 0 ]; then 

    # Install xxenv-latest, which adds shortcuts for installing the latest 
    # version of python.
    git clone \
      https://github.com/momo-lab/xxenv-latest.git \
      "$(pyenv root)"/plugins/xxenv-latest

    pyenv latest install
    pyenv latest global

    $RC/bin/bump-pip

  fi
}
function configure_shell() {
  if hash zsh &> /dev/null; then
      echo "$ chsh -s $(which zsh)"
      chsh -s $(which zsh)
  fi
}

check_requirement zsh
check_requirement git

install_antigen
install_home_dirs
install_symlinks
install_system_packages
install_python

configure_shell
