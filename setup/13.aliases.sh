function ls () {
    /bin/ls -X --color $@                                                   \
        --hide="*~"                                                         \
        --hide="*.pyc"                                                      \
        --hide="\#*\#"                                                      \
        --hide="*.aux"                                                      \
        --hide="*.nlo"                                                      \
        --hide="*.bbl"                                                      \
        --hide="*.blg"                                                      \
        --hide="lost+found"
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
alias zcp='noglob zmv -W -p cp'
alias zln='noglob zmv -W -p ln'
alias zrc='source ~/.zshrc'

alias pu=pushd
alias po=popd

alias back='cd ~-'
alias here='cd -P .'

alias top='\top -u kale'
alias topall='\top'

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
alias gvss='gvim +"set guifont=Monospace\ 18" +"set nospell"'

alias ga='git add'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias gu='git push'
alias wgs='watch git status'

function gs () {
    if [ -d "$1" ]; then
        cd $1; git status; cd ~- 
    else
        git status
    fi
}

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
alias libreoffice='fork libreoffice'
alias gtkpod='fork gtkpod'
alias rhythmbox='fork rhythmbox'
alias eog='fork eog'

alias ssh-kortemmelab-proxy='autossh -fND 9050 kortemmelab-proxy'
alias ssh-mountainview-proxy='autossh -fND 9050 mountainview-proxy'

alias pg='ping google.com'
alias pk='ping kxgames.net'

alias ucsf-wpa='nmcli con up id "UCSF (secure)"'

# Aliases muck around with the zsh completion system, and single line 
# functions muck around with bash.

function evince () {
    fork evince $@
}

function px () {
    python -c "$1"
}

function pxp () {
    python -c "print $1"
}

alias px="noglob px"
alias pxp="noglob pxp"
