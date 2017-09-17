if [ -e /etc/fedora-release -a $EUID -ne 0 ]; then
    sudo dnf install -y                                     \
        http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm          \
        http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm    \
        "@Development Tools"                                \
        "@RPM Development Tools"                            \
        "@C Development Tools and Libraries"                \
        ack                                                 \
        acpi                                                \
        autofs                                              \
        calibre                                             \
        duplicity                                           \
        firefox                                             \
        fuse-sshfs                                          \
        gimp                                                \
        gnumeric                                            \
        htop                                                \
        hub                                                 \
        inkscape                                            \
        lapack-devel                                        \
        libreoffice                                         \
        libreoffice-TexMaths                                \
        lxrandr                                             \
        mailx                                               \
        pithos                                              \
        pstoedit                                            \
        pymol                                               \
        python3-devel                                       \
        python3-scipy                                       \
        python3-matplotlib                                  \
        python3-numpy                                       \
        python3-pandas                                      \
        python3-virtualenv                                  \
        qiv                                                 \
        sakura                                              \
        sendmail                                            \
        scribus                                             \
        scrot                                               \
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

fi
