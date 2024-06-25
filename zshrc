unsetopt share_history
setopt extended_glob
setopt vi

fpath+=~/.zcompdef
autoload -U compinit && compinit

. ~/.zaliases
. ~/.zhashes
. ~/.zexports
. ~/.dotfiles/plugins/agkozak-zsh-prompt/agkozak-zsh-prompt.plugin.zsh
