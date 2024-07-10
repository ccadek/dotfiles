source $HOME/.config/zsh/env.zsh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $ZSH_CONFIG_DIR/alias.zsh
source $ZSH_CONFIG_DIR/history.zsh
source $ZSH_CONFIG_DIR/completions.zsh
source $ZSH_CONFIG_DIR/functions.zsh
source $ZSH_CONFIG_DIR/plugins.zsh

source <(fzf --zsh)
eval "$(starship init zsh)"
