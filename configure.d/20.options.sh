export THIS_SHELL=`ps --no-headers --format comm $$`

if [ $THIS_SHELL = zsh ]; then

    # Enable vim-like line editing.
    bindkey -v

    # Enable some smart cd features.
    setopt auto_cd

    # Don't allow '>' to clobber files.
    setopt no_clobber

    # Enable extended globbing.
    setopt extended_glob
    setopt bare_glob_qual

    fpath=(~/.shell/tab_completion $fpath)

    # Enable fancy tab completion
    zstyle :compinstall filename '/home/kale/.zshrc'
    autoload -Uz bashcompinit && bashcompinit
    autoload -Uz compinit && compinit
    autoload -U "~/.shell/tab_completion/*(:t)"

    # If you're having trouble adding a new completion file, try removing 
    # '~/.zcompdump'.  This is a cache file for the completion system, and when 
    # it gets out of date nothing sems to work.
    
    # Here's a good article on how to write and use completion functions:
    # https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org

    # Make tab-completion much more verbose.
    zstyle ':completion:*' verbose yes
    zstyle ':completion:*:descriptions' format '%B%d%b'
    zstyle ':completion:*:messages' format '%d'
    zstyle ':completion:*:warnings' format 'No matches for: %d'
    zstyle ':completion:*' group-name

    # Recover expansions when going back in history.
    #function _recover_line_or_else() {
    #  if [[ -z $BUFFER && $CONTEXT = start && $zsh_eval_context = shfunc
    #        && -n $ZLE_LINE_ABORTED
    #        && $ZLE_LINE_ABORTED != $history[$((HISTCMD-1))] ]]; then
    #    LBUFFER+=$ZLE_LINE_ABORTED
    #    unset ZLE_LINE_ABORTED
    #  else
    #    zle .$WIDGET
    #  fi
    #}
    #zle -N up-line-or-history _recover_line_or_else
    #function _zle_line_finish() {
    #  ZLE_LINE_ABORTED=$BUFFER
    #}
    #zle -N zle-line-finish _zle_line_finish

    # Interpret valid python expressions as python.
    #function interpret_as_python () {
    #    BUFFER="python3 -c 'print($BUFFER)' 2&>/dev/null || $BUFFER"
    #    zle accept-line
    #}
    #zle -N interpret_as_python_widget interpret_as_python
    #bindkey '^J' interpret_as_python_widget 
    #bindkey '^M' interpret_as_python_widget 

    # Enable the awesome 'zmv' function.
    autoload zmv

else

    # Enable vim-like line editing.
    set -o vi

fi
