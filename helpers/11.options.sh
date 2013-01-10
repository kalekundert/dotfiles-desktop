export THIS_SHELL=`ps --no-headers --format comm $$`

if [ $THIS_SHELL = zsh ]; then

    # Enable vim-like line editing.
    bindkey -v

    # Enable extended globbing.
    setopt extended_glob
    setopt bare_glob_qual

    fpath=(~/.shell/completions $fpath)

    # The following lines were added by compinstall
    zstyle :compinstall filename '/home/kale/.zshrc'
    autoload -Uz compinit && compinit
    autoload -U "~/.shell/completions/*(:t)"
    autoload zmv

    # These lines make tab-completion more verbose.
    zstyle ':completion:*' verbose yes
    zstyle ':completion:*:descriptions' format '%B%d%b'
    zstyle ':completion:*:messages' format '%d'
    zstyle ':completion:*:warnings' format 'No matches for: %d'
    zstyle ':completion:*' group-name

elif [ $THIS_SHELL = bash ]; then

    # Enable vim-like line editing.
    set -o vi

fi
