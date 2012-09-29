if [[ $PATH != *hacking/scripts* ]]; then
    export PATH=~/hacking/scripts:$PATH
    export PATH=~/hacking/installs/bin:$PATH
    export PATH=~/research/scripts:$PATH
    export PATH=~/research/installs/bin:$PATH
fi

export EDITOR=vim
export BROWSER=firefox

export MAN_PATH=~/hacking/installs/man
export LD_LIBRARY_PATH=~/research/sali/imp/debug/build/lib/
export PYTHONPATH=~/hacking:~/hacking/installs/lib/python2.7/site-packages
export CLASSPATH=.:./bin/:usr/share/java
export TEXINPUTS=~/setup/desktop/latex:

export AUTOSSH_PORT=21109
export AUTOSSH_POLL=5
export AUTOSSH_PIDFILE=~/.ssh/autossh.pid
