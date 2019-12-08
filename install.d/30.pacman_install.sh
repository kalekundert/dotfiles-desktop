if type -P pacman >/dev/null; then

  echo "Installing core packages:"
	sudo pacman -S \
    ack \
    acpi \
    acpid \
    arandr \
    biber \
    borg \
    calibre \
    clang \
    cups \
    dos2unix \
    eom \
    fcron \
    firefox \
    foomatic-db \
    foomatic-db-engine \
    foomatic-db-gutenprint-ppds \
    foomatic-db-nonfree \
    foomatic-db-nonfree-ppds \
    foomatic-db-ppds \
    gdb \
    gimp \
    gmrun \
    gnome-keyring \
    gnumeric \
    gnupg \
    gutenprint \
    htop \
    inkscape \
    libreoffice-extension-texmaths \
    libreoffice-fresh \
    lyx \
    mercurial \
    mlocate \
    noto-fonts \
    openbox \
    paps \
    pavucontrol \
    pinentry \
    pulseaudio \
    pulseaudio-alsa \
    python-matplotlib \
    python-numpy \
    python-pandas \
    python-scipy \
    python-virtualenv \
    qutebrowser \
    rsync \
    sakura \
    scribus \
    scrot \
    sshfs \
    sudo \
    texlive-most \
    thunderbird \
    thunderbird-extension-enigmail \
    ttf-croscore \
    ttf-dejavu \
    ttf-fira-code \
    ttf-fira-mono \
    ttf-fira-sans \
    ttf-font-awesome \
    ttf-liberation \
    ttf-roboto \
    valgrind \
    vlc \
    xdotool \
    xf86-video-intel \
    xorg \
    xsel \
    zathura \
    zathura-cb \
    zathura-djvu \
    zathura-pdf-mupdf \
    zathura-ps \
    zsh \

  echo "Installing AUR packages:"
  AUR_DIR=~/hacking/third_party
  mkdir -p $AUR_DIR

  if ! type -p yay >/dev/null; then
    cd $AUR_DIR

    if [ ! -d $AUR_DIR/yay ]; then
      git clone https://aur.archlinux.org/yay.git
    fi
    cd yay
    makepkg -si
  fi

  yay -S \
    pam-ssh \
    pam-gnupg-git \
    openbox-multihead-git \
    neovim-gtk-git \
    google-chrome \
    skypeforlinux-stable-bin \
    pithos \
    snapgene \

fi
