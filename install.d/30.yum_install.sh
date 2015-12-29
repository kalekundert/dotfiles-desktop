if [ -e /etc/fedora-release -a $EUID -ne 0 ]; then
    sudo dnf install -y                                     \
        http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm          \
        http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm    \
        "@Development Tools"                                \
        "@RPM Development Tools"                            \
        "@C Development Tools and Libraries"                \
        zsh                                                 \
        vim-enhanced                                        \
        vim-X11                                             \
        sakura                                              \
        clang                                               \
        scrot                                               \
        qiv                                                 \
        python*-virtualenv                                  \
        python*-numpy                                       \
        python*-matplotlib                                  \
        scipy                                               \
        python3-scipy                                       \
        xbacklight                                          \
        python-devel                                        \
        python3-devel                                       \

fi
