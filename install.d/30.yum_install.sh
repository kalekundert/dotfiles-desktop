if [ -e /etc/fedora-release -a $EUID -ne 0 ]; then
    echo "Please provide a sudo password to install packages:"
    sudo dnf update -y
    sudo dnf install -y                                     \
        http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm          \
        http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y                                     \
        "@Development Tools"                                \
        "@RPM Development Tools"                            \
        "@C Development Tools and Libraries"                \
        ack                                                 \
        acpi                                                \
        autofs                                              \
        calibre                                             \
        clang                                               \
        duplicity                                           \
        eom                                                 \
        firefox                                             \
        foomatic                                            \
        fuse-sshfs                                          \
        gimp                                                \
        git                                                 \
        gmrun                                               \
        gnumeric                                            \
        htop                                                \
        hplip                                               \
        hub                                                 \
        inkscape                                            \
        lapack-devel                                        \
        libreoffice                                         \
        libreoffice-TexMaths                                \
        lxrandr                                             \
        lxtask                                              \
        mailx                                               \
        ncurses-devel                                       \
        pithos                                              \
        pinentry-gtk                                        \
        pstoedit                                            \
        pymol                                               \
        python3-devel                                       \
        python3-scipy                                       \
        python3-matplotlib                                  \
        python3-numpy                                       \
        python3-pandas                                      \
        python3-virtualenv                                  \
        sakura                                              \
        sendmail                                            \
        scribus                                             \
        scrot                                               \
        tidy                                                \
        thunderbird                                         \
        thunderbird-enigmail                                \
        thunderbird-lightning-gdata                         \
        vim-enhanced                                        \
        vim-X11                                             \
        vlc                                                 \
        xbacklight                                          \
        xorg-x11-server-Xvfb                                \
        zathura                                             \
        zathura-plugins-all                                 \
        zsh                                                 \

    # Get Microsoft fonts (for snapgene)
    sudo dnf install -y curl cabextract xorg-x11-font-utils fontconfig
    sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

fi
