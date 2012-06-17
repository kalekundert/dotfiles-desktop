# Define a number of colors using the standard shell escape codes.  The color
# that gets used will depend on the role of this machine.  Note that these
# colors will only work for fairly modern shells.

normal=$'%{\e[0m%}'

black=$'%{\e[1;30m%}'
white=$'%{\e[1;37m%}'

red=$'%{\e[1;31m%}'
green=$'%{\e[1;32m%}'
blue=$'%{\e[1;34m%}'

yellow=$'%{\e[1;33m%}'
purple=$'%{\e[1;35m%}'
cyan=$'%{\e[1;36m%}'

user_color=$yellow
admin_color=$red
remote_color=$blue

# Define a few different prompt templates.  The template that gets used will
# also depend on the role of this computer.

basic='[%c] '
remote='[%c] %n@%m: '
continued=' '

# Choose a color and a prompt string.  Both of these decisions depend on which
# user is logged in and where they are logged in from.

[[ -n $SSH_CONNECTION ]] && prompt=$remote || prompt=$basic
[[ -n $SSH_CONNECTION ]] && color=$blue || color=$yellow

[[ `/usr/bin/whoami` = 'root' ]] && color=$red

# Set the two variables that are used to display the prompt.

PS1=$color$prompt$normal
PS2=$color$continued$normal

# Add an extra control sequence to have the prompt string echoed in the
# terminal's title bar.

if [[ $TERM != "linux" ]] ; then
    PS1=$'%{\e]0;%~\007%}'${PS1}
fi
