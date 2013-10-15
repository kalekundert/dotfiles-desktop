#if [[ $PATH != *hacking/scripts* ]]; then
#    export PATH=~/.local/bin:$PATH
#    export PATH=~/hacking/scripts:$PATH
#    export PATH=~/hacking/installs/bin:$PATH
#    export PATH=~/hacking/installs/sbin:$PATH
#    export PATH=~/research/software/scripts:$PATH
#    export PATH=~/research/software/installs/bin:$PATH
#    export PATH=~/research/software/installs/sbin:$PATH
#fi

export PATH='/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin'
for directory in ~/.local/bin ~/.local/bin/*/; do
    export PATH=$directory:$PATH
done

export EDITOR=vim
export BROWSER=firefox

eval $(dircolors ~/.shell/colors.ls)

export MAN_PATH=~/hacking/installs/man
export PYTHONPATH=~/.local/lib/python2.7/site-packages:~/hacking/libraries:~/research/software/libraries
export CLASSPATH=.:./bin/:usr/share/java
export TEXINPUTS=~/hacking/config/latex:
export BSTINPUTS=~/hacking/config/latex:

export AUTOSSH_PORT=21109
export AUTOSSH_POLL=5
export AUTOSSH_PIDFILE=~/.ssh/autossh.pid

export GPG_TTY=`tty`
