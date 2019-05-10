if [ -e /etc/fedora-release -a $EUID -ne 0 ]; then
    echo "Please provide a sudo password to install packages:"
    sudo dnf update -y
    sudo dnf remove -y                                      \
        PackageKit-command-not-found
    sudo dnf install -y                                     \
        http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm          \
        http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y                                     \
        "@Development Tools"                                \
        "@RPM Development Tools"                            \
        "@C Development Tools and Libraries"                \
        ack                                                 \
        acpi                                                \
        arandr                                              \
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
        lxsession                                           \
        lyx                                                 \
        lxtask                                              \
        mailx                                               \
        mercurial                                           \
        ncurses-devel                                       \
        openbox                                             \
        pithos                                              \
        pinentry-gtk                                        \
        pstoedit                                            \
        pymol                                               \
        pygtk2                                              \
        pygtk2-devel                                        \
        python-virtualenv
        python2-matplotlib                                  \
        python2-matplotlib-gtk                              \
        python3-devel                                       \
        python3-scipy                                       \
        python3-matplotlib                                  \
        python3-numpy                                       \
        python3-pandas                                      \
        python3-virtualenv                                  \
        qutebrowser                                         \
        sakura                                              \
        sendmail                                            \
        scribus                                             \
        scrot                                               \
        tidy                                                \
        thunderbird                                         \
        thunderbird-enigmail                                \
        thunderbird-lightning-gdata                         \
        util-linux-user                                     \
        vim-enhanced                                        \
        vim-X11                                             \
        vlc                                                 \
        xbacklight                                          \
        xorg-x11-server-Xvfb                                \
        zathura                                             \
        zathura-plugins-all                                 \
        zsh                                                 \

    # pygtk2, pygtk2-devel, python2-matplotlib, and python2-matplotlib-gtk are 
    # installed so that pygtk will work with python2 (pygtk is notoriously 
    # impossible to install via pip).  The python2 virtualenv that will be 
    # created in the next script will be configured to use system 
    # site-packages.  I'm pretty sure that if you were to install matplotlib 
    # from PyPI for that python2, pygtk would no longer work, but fortunately 
    # pip won't do that unless you pass a special flag.

    # Get Microsoft fonts (for snapgene)
    sudo dnf install -y curl cabextract xorg-x11-font-utils fontconfig
    sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

fi
