function add_dir_to_path () {
    # Usage:
    #   add_dirs_to_path <dir>
    if [ -d "$1" ]; then
        export PATH=$1:$PATH
    fi
}

function add_subdirs_to_path () {
    # Usage:
    #   add_subdirs_to_path <find args>
    if [ -d $1 ]; then
        for SUBDIR in $(find "$@" -type d | sort); do
            add_dir_to_path $SUBDIR
        done
    fi
}

# Adding to the path like this allows me to modify the PATH in host-specific
# ways before this scripts runs.  The drawback is that updating $PATH requires
# restarting the shell. 
if [ -z "$PATH_LOADED" ]; then
    export PATH_LOADED=1

    add_dir_to_path ~/.local/bin
    add_dir_to_path ~/.local/bin/scripts
    add_subdirs_to_path ~/.venv -maxdepth 2 -wholename '*python??/bin'

    export LD_LIBRARY_PATH=~/.local/lib:~/.local/lib64:$LD_LIBRARY_PATH
    export PKG_CONFIG_PATH=~/.local/lib/pkgconfig:$PKG_CONFIG_PATH
fi

export EDITOR=vim
export BROWSER=qutebrowser
export PDF=zathura

eval $(dircolors $RC_DIR/configure.d/resources/colors.ls)

export CC=$(which gcc)
export CXX=$(which g++)
export PYTHONSTARTUP=~/.pythonrc

export AUTOSSH_PORT=21109
export AUTOSSH_POLL=5
export AUTOSSH_PIDFILE=~/.ssh/autossh.pid

export GPG_TTY=`tty`

export ROSETTA=~/rosetta/master
export ROSETTA_BUILD=linuxclangrelease

export NINJA_STATUS="[%f/%t] [-j%r] "
