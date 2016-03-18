if [ -e /etc/fedora-release -a $EUID -ne 0 ]; then
    sudo dnf install -y                                     \
        http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm          \
        http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm    \
        "@Development Tools"                                \
        "@RPM Development Tools"                            \
        "@C Development Tools and Libraries"                \
        ack                                                 \
        acpi                                                \
        calibre                                             \
        firefox                                             \
        fuse-sshfs                                          \
        gnumeric                                            \
        htop                                                \
        libreoffice                                         \
        pithos                                              \
        python3-devel                                       \
        python3-scipy                                       \
        python3-matplotlib                                  \
        python3-numpy                                       \
        python3-pandas                                      \
        python3-virtualenv                                  \
        qiv                                                 \
        sakura                                              \
        scrot                                               \
        thunderbird                                         \
        thunderbird-enigmail                                \
        thunderbird-lightning-gdata                         \
        vim-enhanced                                        \
        vim-X11                                             \
        xbacklight                                          \
        xorg-x11-server-Xvfb                                \
        zathura                                             \
        zathura-plugins-all                                 \
        zsh                                                 \

fi
