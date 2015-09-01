#if [[ $PATH != *hacking/scripts* ]]; then
#    export PATH=~/.local/bin:$PATH
#    export PATH=~/hacking/scripts:$PATH
#    export PATH=~/hacking/installs/bin:$PATH
#    export PATH=~/hacking/installs/sbin:$PATH
#    export PATH=~/research/software/scripts:$PATH
#    export PATH=~/research/software/installs/bin:$PATH
#    export PATH=~/research/software/installs/sbin:$PATH
#fi

if [ -z "$PATH_CONFIGURED" ]; then
    export PATH_CONFIGURED='yes'

    export PATH="/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin"
    export PATH="/home/kale/hacking/projects/android-sdk/platform-tools:$PATH"
    export PATH="/home/kale/hacking/projects/android-sdk/tools:$PATH"
    for directory in ~/.local/bin ~/.local/bin/*/; do
        export PATH=$directory:$PATH
    done

    export MANPATH=~/.local/man:$MANPATH
fi

export EDITOR=vim
export BROWSER=firefox

export OPENBOX_TERMINAL=sakura
export OPENBOX_EDITOR=gvim
export OPENBOX_BROWSER=firefox
export OPENBOX_EMAIL=thunderbird

eval $(dircolors ~/.shell/database/colors.ls)

export PYTHONPATH=~/research/software/third_party/imp/build/lib
export CLASSPATH=.:./bin/:usr/share/java:/home/kale/hacking/projects/android-sdk/tools
export TEXINPUTS=~/hacking/config/latex:
export BSTINPUTS=~/hacking/config/latex:

export AUTOSSH_PORT=21109
export AUTOSSH_POLL=5
export AUTOSSH_PIDFILE=~/.ssh/autossh.pid

export GPG_TTY=`tty`
