export THIS_SHELL=`ps --no-headers --format comm $$`

if [ $THIS_SHELL = zsh ]; then

    # Enable vim-like line editing.
    bindkey -v

    # Enable extended globbing.
    setopt extended_glob
    setopt bare_glob_qual

    fpath=(~/.shell/tab_completion $fpath)

    # Enable fancy tab completion
    zstyle :compinstall filename '/home/kale/.zshrc'
    autoload -Uz bashcompinit && bashcompinit
    autoload -Uz compinit && compinit
    autoload -U "~/.shell/tab_completion/*(:t)"

    # Make tab-completion much more verbose.
    zstyle ':completion:*' verbose yes
    zstyle ':completion:*:descriptions' format '%B%d%b'
    zstyle ':completion:*:messages' format '%d'
    zstyle ':completion:*:warnings' format 'No matches for: %d'
    zstyle ':completion:*' group-name

    # Enable the awesome 'zmv' function.
    autoload zmv

else

    # Enable vim-like line editing.
    set -o vi

fi
