# General Utilities {{{1
# =================
alias xx="exec zsh"
alias xrc="echo Restart the shell to reload the configuration."
alias edal="vim $RC/zsh/aliases.zsh && xrc"
alias edvar="vim $RC/zsh/variables.zsh && xrc"
alias edpath="vim $RC/zsh/path.zsh && xrc"
alias edpkg="vim $RC/bin/bump-arch"
alias edpip="vim $RC/bin/bump-pip"
alias edvi='vim ~/.config/nvim/init.vim'
alias edob='vim ~/.config/openbox/scripts/keyboard.py'
alias reob='~/.config/openbox/reconfigure.sh'
alias edav='vim ~/.config/avendesora/accounts.gpg && chmod 600 ~/.config/avendesora/accounts.gpg'
alias quit='exit'
alias logout='gnome-session-quit --logout --force'
alias xsu='exec su'
alias simon-says='sudo'
alias top='\top -u $USER'
alias topall='\top'
alias date='\date +"%A, %B %-d%n%-I:%M %p"'
alias which='/bin/which'
alias where='whereis'
alias len='wc -c'
alias ,ale=make
alias catf='tail -v -n +1'
alias ssh-guybrush-proxy='ssh -fND 1080 guybrush-proxy'
alias pg='ping google.com'
alias pk='ping kxgames.net'

alias cd..='cd ..'
alias pu='pushd'
alias po='popd'
alias back='cd ~-'
alias here='cd -P .'

alias monitor='fork arandr'

alias yum='sudo dnf'
alias pacman='sudo pacman'
alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-get'
alias virt-manager='sudo virt-manager'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias updatedb='sudo updatedb'
alias powertop='sudo powertop'
alias zzz='sudo pm-suspend'

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

alias gs='git status'

function ls () {
    if [ $# -eq 1 ] && [ -e '.lsrc' ]; then
        ./.lsrc
    else
        /bin/ls $@                                                          \
            -X                                                              \
            --color                                                         \
            --group-directories-first                                       \
            --hide="*~"                                                     \
            --hide="*.pyc"                                                  \
            --hide="\#*\#"                                                  \
            --hide="*.aux"                                                  \
            --hide="*.nlo"                                                  \
            --hide="*.bbl"                                                  \
            --hide="*.blg"                                                  \
            --hide="_minted-*"                                               \
            --hide="__pycache__"                                            \
            --hide="lost+found"                                             \
            --hide="autom4te.cache"                                         \
            --hide="Makefile.in"                                            \
            --hide="aclocal.m4"                                             \
            --hide="autom4te.cache"                                         \
            --hide="databases-incognito"                                         \
            --hide="*.egg-info"
    fi
}

# There are a lot of ways that I tend to misspell 'ls'.

alias l='ls'
alias s='ls'
alias sl='ls'
alias ld='ls'
alias ks='ls'
alias sk='ls'
alias lls='ls'
alias lks='ls'
alias la='ls -A'
alias ll='ls -l'
alias lr='ls -R'
alias lsd='ls -d */'

alias lcd='cd'
alias dc='cd'

alias cr='cp -r'

alias zmv='noglob zmv -W'
alias zcp='noglob zmv -W -p cp'
alias zln='noglob zmv -W -p ln'

# Vim {{{1
# ===
alias vim='nvim'
alias gvim='fork nvim-gtk'
alias vi='vim'
alias v='gvim'
alias m='gvim'
alias givm='gvim'
alias gvss='gvim +"set guifont=Monospace\ 18" +"set nospell"'

function gblog () {
    gvim ~/personal/blog/content/$@
}

# I have a tendency to accidentally type these vim commands into the shell, and 
# I don't like seeing the "command not found" errors that result.

alias :w='true'
alias :q='true'
alias :wq='true'

# Python {{{1
# ======
alias py=python3
alias py2=python2
alias py3=python3
alias ipy='ipython3 --pylab'
alias ipy2='ipython2 --pylab'
alias ipy3='ipython3 --pylab'
alias ism=isympy3
alias ism2=isympy2
alias ism3=isympy3
alias pytest='py.test'
alias pytest2='py.test-2.7'
alias pytest3='py.test-3.4'
alias pdb='python -m ipdb'
alias pdb2='python2 -m ipdb'
alias pdb3='python3 -m ipdb'

# Sometimes I want to run small snippets of python code without launching the 
# entire interpreter.  Usually this is either to do a bit of arithmetic (pxp) 
# or to get help on simple objects (pxh).

imports="from math import *"

function px () {
    python3 -c "$imports; $*"
}

function pxp () {
    python3 -c "$imports; print($*)"
}

function pxh () {
    python3 -c "$imports; help($1)"
}

alias px="noglob px"
alias pxp="noglob pxp"
alias pxh="noglob pxh"

# Java {{{1
# ====
alias ja='java -ea'
alias jc='javac -g'
alias ju='java org.junit.runner.JUnitCore'

# Other Applications {{{1
# ==================
alias 2c=two_cents
alias av=avendesora
alias abiword='fork abiword'
alias chemdraw='fork gchempaint'
alias dia='fork dia'
alias eom='fork eom'
alias fonts='fork gnome-specimen'
alias exfalso='fork exfalso'
alias firefox='fork firefox'
alias chrome='fork google-chrome-stable'
alias gimp='fork gimp'
alias xls='fork gnumeric'
alias gnumeric='fork gnumeric'
alias glycerol_stocks='fork gnumeric ~/research/inventory/glycerol_stocks.xml'
alias plasmids='fork gnumeric ~/research/inventory/plasmids.xml'
alias masterpdf='fork masterpdfeditor4'
alias handbrake='fork ghb'
alias gparted='sudo gparted'
alias gtkpod='fork gtkpod'
alias img='fork gpicview'
alias libreoffice='fork libreoffice'
alias lo='fork libreoffice'
alias lyx='fork lyx'
alias mendeley='fork /home/kale/research/software/projects/mendeley/bin/mendeleydesktop'
alias mysql-workbench='fork mysql-workbench'
alias pithos='fork pithos'
alias pymol='fork pymol -qx'
alias pymol-tk='fork pymol -q'
alias pyspread='fork pyspread'
alias qiv='fork qiv'
alias quodlibet='fork quodlibet'
alias rhythmbox='fork rhythmbox'
alias sakura='fork sakura'
alias scribus='fork scribus'
alias skype='fork skype'
alias sqliteman='fork sqliteman'
alias thunderbird='fork thunderbird'
alias vlc='fork vlc'
alias civ='steam steam://rungameid/8930'
alias latex-help='za /usr/share/texlive/texmf-dist/doc/latex/base/source2e.pdf'
alias snap='snapgene'

function imagej () {
    # These Java options don't seem to really do anything, so they're here more 
    # aspirationally than anything.
    export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
    fork /home/kale/research/software/third_party/fiji/ImageJ-linux64 $(realpath $1)
}
function snapgene () {
    if [ $# -ge 1 ]; then
      fork snapgene $( realpath -m "$@")
    else
      fork snapgene
    fi
}
function snapgene-viewer () {
    if [ $# -ge 1 ]; then
      fork snapgene-viewer $( realpath -m "$@")
    else
      fork snapgene-viewer
    fi
}

# I need a function to alias two_cents so I can provide the -D option only if 
# no other arguments are specified.

function two_cents () {
    if [ $# = 0 ]; then
        command two_cents -D
    else
        command two_cents $@
    fi
}

# The zsh completion system doesn't seem to work very well on aliases.  Since I 
# have a custom completion script for evince, I had to write the 'fork' alias 
# as a shell function instead.  (I would have written it as a one-liner, but 
# that confuses bash.)

function za () {
    fork zathura $@
}

function zathura () {
    fork zathura $@
}

function evince () {
    fork evince $@
}

function inkscape () {(
    # Inkscape expects python to be python2, so remove my python3 from the PATH
    #export PATH=/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin
    fork inkscape $@
)}
alias ink=inkscape

function libcirc () {(
    cd ~/kxgames/third_party/liberation-circuit-1.0/bin
    ./libcirc
)}

# If nautilus is not given an argument, run it on the current working directory 
# instead of the home directory.

function nautilus () {
    if [ $# -eq 0 ]; then
        fork nautilus .
    else
        fork nautilus
    fi
}

