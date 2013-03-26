# General Utilities {{{1
# =================
alias xx='exec $SHELL'
alias xrc='source ~/.zshrc'
alias quit='exit'
alias xsu='exec su'
alias simon-says='sudo'
alias yum='sudo yum'
alias top='\top -u $USER'
alias topall='\top'
alias date='\date +"%A, %B %-d%n%-I:%M %p"'
alias where='whereis'

alias pu='pushd'
alias po='popd'
alias back='cd ~-'
alias here='cd -P .'

# In some directories, I like to have more control over what 'ls' displays.  
# For example, sometimes I like to sort files alphabetically and sometimes I 
# like to sort them by file extension.  
#
# To get this behavior, I have 'ls' look for an '.lsrc' file before executing.  
# If such a file is found, then that file is executed in lieu of 'ls' itself.  
# Otherwise, 'ls' is run.  By default, a few file extensions are ignored.
#
# This is still a pretty rough implementation.  It's easy to get around (i.e.  
# by passing any arguments to 'ls') and the '.lsrc' files are hard to write.  I 
# might have to write a more involved python script to get around these issues.

function ls () {
    if [ $# -eq 1 ] && [ -e '.lsrc' ]; then
        ./.lsrc
    else
        /bin/ls $@                                                          \
            -X                                                              \
            --color                                                         \
            --group-directories-first                                       \
            --hide="*~"                                                     \
            --hide="*.o"                                                    \
            --hide="*.pyc"                                                  \
            --hide="\#*\#"                                                  \
            --hide="*.aux"                                                  \
            --hide="*.nlo"                                                  \
            --hide="*.bbl"                                                  \
            --hide="*.blg"                                                  \
            --hide="lost+found"
    fi
}

# There are a lot of ways that I tend to misspell 'ls'.

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

# Vim {{{1
# ===
alias vi='vim'
alias v='gvim'
alias g='gvim'
alias givm='gvim'
alias gvss='gvim +"set guifont=Monospace\ 18" +"set nospell"'

# I have a tendency to accidentally type these vim commands into the shell, and 
# I don't like seeing the "command not found" errors that result.

alias :w='true'
alias :q='true'
alias :wq='true'

# Git {{{1
# ===
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gb='git branch'
alias gk='git checkout'
alias gm='git merge'
alias gd='git diff'
alias gp='git pull'
alias gu='git push'
alias gpu='git pull && git push'
alias wgs='watch git status'

# Make 'git status' seem to understand a directory argument.

function gs () {
    if [ -d "$1" ]; then
        cd $1; git status; cd ~- 
    else
        git status
    fi
}

# Python {{{1
# ======
alias py=python
alias ipy=ipython
alias ism=isympy

alias python='python -W ignore'
alias ipython='ipython --pylab'

# Sometimes I want to run small snippets of python code without launching the 
# entire interpreter.  Usually this is either to do a bit of arithmetic (pxp) 
# or to get help on simple objects (pxh).

function px () {
    python -c "$*"
}

function pxp () {
    python -c "print $*"
}

function pxh () {
    python -c "help($1)"
}

alias px="noglob px"
alias pxp="noglob pxp"
alias pxh="noglob pxh"

# Java {{{1
# ====
alias ja='java -ea'
alias jc='javac -g'
alias ju='java org.junit.runner.JUnitCore'

# Reasearch Tools {{{1
# ===============
alias rn='~/rosetta/source/ninja_build.py'
alias rf='~/rosetta/source/ninja/refocus-test'
alias rb='~/rosetta/source/ninja/compile-test'
alias rx='~/rosetta/source/ninja/execute-test'
alias rd='~/rosetta/source/ninja/debug-test'

# Other Applications {{{1
# ==================
alias sakura='fork sakura'
alias firefox='fork firefox'
alias thunderbird='fork thunderbird'
alias abiword='fork abiword'
alias scribus='fork scribus'
alias chemdraw='fork gchempaint'
alias gimp='fork gimp'
alias inkscape='fork inkscape'
alias libreoffice='fork libreoffice'
alias gtkpod='fork gtkpod'
alias rhythmbox='fork rhythmbox'
alias quodlibet='fork quodlibet'
alias exfalso='fork exfalso'
alias eog='fork eog'

# The 'pymol' alias doesn't launch the Tk menu that usually starts with pymol, 
# because it's ugly and I don't use it anyways.  Use the 'pymol-tk' alias if 
# that menu is desired.

alias pymol='fork pymol -qx'
alias pymol-tk='fork pymol -q'

# The zsh completion system doesn't seem to work very well on aliases.  Since I 
# have a custom completion script for evince, I had to write the 'fork' alias 
# as a shell function instead.  (I would have written it as a one-liner, but 
# that confuses bash.)

function evince () {
    fork evince $@
}

# SSH and Networking {{{1
# ==================
alias ssh-kortemmelab-proxy='autossh -fND 9050 kortemmelab-proxy'
alias ssh-mountainview-proxy='autossh -fND 9050 mountainview-proxy'

alias pg='ping google.com'
alias pk='ping kxgames.net'

alias ucsf-wpa='nmcli con up id "UCSF (secure)"'

