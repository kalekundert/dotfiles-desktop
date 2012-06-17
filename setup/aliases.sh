function ls () {
    /bin/ls -X --color $@                                                   \
        --hide="*.pyc"                                                      \
        --hide="\#*\#"                                                      \
        --hide="*.aux"                                                      \
        --hide="*.log"                                                      \
        --hide="*.nlo"                                                      \
        --hide="*.bbl"                                                      \
        --hide="*.blg"
}

alias l='ls'
alias s='ls'
alias sl='ls'
alias ld='ls'
alias ks='ls'
alias sk='ls'

alias la='ls -A'
alias ll='ls -l'
alias lr='ls -R'

alias cr='cp -r'

alias zmv='noglob zmv -W'

alias pu=pushd
alias po=popd

alias back='cd ~-'
alias here='cd -P .'

alias xsu='exec su'
alias simon-says='sudo'

alias :w=true
alias :q=true
alias :wq=true

alias quit=exit
alias term=sakura
alias where=whereis

alias date='\date +"%A, %B %-d%n%-I:%M %p"'

alias vi=vim
alias v=gvim
alias g=gvim
alias givm=gvim

alias wgs='sakura -e "watch git status"'

alias py=python
alias ipy=ipython
alias ism=isympy

alias python='python -W ignore'
alias ipython='ipython --pylab'

alias pymol='fork pymol -qx'
alias pymol-tk='fork pymol -q'

alias ja='java -ea'
alias jc='javac -g'
alias ju='java org.junit.runner.JUnitCore'

alias sakura='fork sakura'
alias firefox='fork firefox'
alias abiword='fork abiword'
alias gimp='fork gimp'
alias inkscape='fork inkscape'
alias gtkpod='fork gtkpod'
alias rhythmbox='fork rhythmbox'
alias eog='fork eog'

alias ssh-jacobsonlab='ssh jacobsonlab -t bin/zsh'
alias ssh-jacobsonlab-proxy='autossh -fND 9050 jacobsonlab'
alias ssh-francislab-proxy='ssh -fN francislab-proxy'
alias ssh-mountainview-proxy='ssh -fN mountainview-proxy'

alias pg='ping google.com'
alias pk='ping kxgames.net'

alias ucsf-wpa='nmcli con up id "UCSF (secure)"'

# Aliases muck around with the completion system.
function evince () { fork evince $@ }
function px () { python -c "print $1" }

alias px="noglob px"


