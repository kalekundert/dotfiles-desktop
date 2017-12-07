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

export PATH="/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin"

add_dir_to_path ~/.local/bin
add_dir_to_path ~/.shell/scripts
add_subdirs_to_path ~/.virtualenvs -maxdepth 2 -wholename '*python??/bin'

export EDITOR=vim
export BROWSER=firefox

eval $(dircolors ~/.shell/configure.d/resources/colors.ls)

export CC=/bin/clang
export CXX=/bin/clang++
export LD_LIBRARY_PATH=~/.local/lib:~/.local/lib64
export PKG_CONFIG_PATH=~/.local/lib/pkgconfig
#export MANPATH=~/.local/man:~/.local/share/man
#export PYTHONPATH=~/research/software/third_party/imp/build/lib
export PYTHONSTARTUP=~/.pythonrc
export CLASSPATH=.:./bin/:usr/share/java:/home/kale/hacking/third_party:/home/kale/hacking/projects/android-sdk/tools
export TEXINPUTS=~/hacking/config/latex:
export BSTINPUTS=~/hacking/config/latex:

export AUTOSSH_PORT=21109
export AUTOSSH_POLL=5
export AUTOSSH_PIDFILE=~/.ssh/autossh.pid

export GPG_TTY=`tty`

source ~/.virtualenvs/python36/bin/virtualenvwrapper.sh
export WORKON_DIR=~/.virtualenvs

