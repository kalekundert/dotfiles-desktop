# Future Directions
# =================
# 1. I think zsh has builtin module for handling both colors and prompts.  Both
#    of these are worth looking into.  
#
# 2. It's possible to put a prompt on the right-hand side of each line.  This
#    is an interesting concept, because there's usually plenty of space over
#    there.  Furthermore, on long lines, the right hand prompt will get
#    overwritten.

# Define a number of colors using the standard shell escape codes.  The color
# that gets used will depend on the role of this machine.  Note that these
# colors will only work in fairly modern terminals.

if [ $THIS_SHELL = zsh ]; then
    normal=$'%{\e[0m%}'
    black=$'%{\e[0;30m%}'
    white=$'%{\e[0;37m%}'
    red=$'%{\e[0;31m%}'
    green=$'%{\e[0;32m%}'
    blue=$'%{\e[0;34m%}'
    yellow=$'%{\e[0;33m%}'
    purple=$'%{\e[0;35m%}'
    cyan=$'%{\e[0;36m%}'

elif [ $THIS_SHELL = bash ]; then
    normal=$'\[\e[0m\]'
    black=$'\[\e[0;30m\]'
    white=$'\[\e[0;37m\]'
    red=$'\[\e[0;31m\]'
    green=$'\[\e[0;32m\]'
    blue=$'\[\e[0;34m\]'
    yellow=$'\[\e[0;33m\]'
    purple=$'\[\e[0;35m\]'
    cyan=$'\[\e[0;36m\]'
fi

user_color=$yellow
admin_color=$red
remote_color=$blue

# Define a few different prompt templates.  The template that gets used will
# also depend on the role of this computer.

USER=`whoami`
HOST=`hostname`

if [ $THIS_SHELL = zsh ]; then
    [ $USER = $HOME_USER ] && [ $HOST = $HOME_HOST ] && prompt='[%c]'
    [ $USER = $HOME_USER ] && [ $HOST != $HOME_HOST ] && prompt='[%c] %m:'
    [ $USER != $HOME_USER ] && [ $HOST = $HOME_HOST ] && prompt='[%c] %n:'
    [ $USER != $HOME_USER ] && [ $HOST != $HOME_HOST ] && prompt='[%c] %n@%m:'

elif [ $THIS_SHELL = bash ]; then
    [ $USER = $HOME_USER ] && [ $HOST = $HOME_HOST ] && prompt='[\W]'
    [ $USER = $HOME_USER ] && [ $HOST != $HOME_HOST ] && prompt='[\W] \h:'
    [ $USER != $HOME_USER ] && [ $HOST = $HOME_HOST ] && prompt='[\W] \u:'
    [ $USER != $HOME_USER ] && [ $HOST != $HOME_HOST ] && prompt='[\W] \u@\h:'
fi

# Choose a color and a prompt string.  Both of these decisions depend on which
# user is logged in and where they are logged in from.

[ $HOST = $HOME_HOST ] && color=$user_color || color=$remote_color
[ $USER = 'root' ] && color=$admin_color

# Set the two variables that are used to display the prompt.

prePS1="$color$prompt$normal "
PS1="$color$prompt$normal "

function precmd {
    
    # This function is invoked before the prompt is displayed, and so it's an 
    # ideal way to modify the prompt based on the current directory.  This 
    # function is only used by zsh, not by bash.

    # Set the title of the terminal window to be the same as the prompt.

    title="\e]0;${PWD/#"$HOME"/~}\a"
    echo -ne "$title"

    # The following logic adds the current git branch to the prompt, when in a 
    # git repository.  It may not work on headless branches, unfortunately.

    branch=$(git symbolic-ref --short HEAD) &> /dev/null

    if [ $? = 0 ] && [ ! -e '.nobranch' ]; then
        PS1=$(echo $prePS1 | sed "s:]:/$branch]:")
    else
        PS1=$prePS1
    fi

    # The following three lines produce the size of the current prompt, 
    # accounting for all of the various escape codes.  I have no idea how it 
    # works.  If you really want to know, the manual page for `zshexpn' might 
    # be a good place to start looking.

    local zero='%([BSUbfksu]|([FB]|){*})'
    length=${#${(S%%)PS1//$~zero/}} 
    padding=${(l.(($length - 4)).. .)}'...'

    PS2="$color$padding$normal "
}
