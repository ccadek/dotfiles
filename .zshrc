# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bindkey "^[[1;5C" forward-word      # Ctrl + Right
bindkey "^[[1;5D" backward-word     # Ctrl + Left
bindkey "^[[H"    beginning-of-line # Home key
bindkey  "^[[F"   end-of-line       # End key
bindkey  "^[[3~"  delete-char       # Del key

source $ZSH_CONFIG_DIR/alias.zsh
source $ZSH_CONFIG_DIR/history.zsh
source $ZSH_CONFIG_DIR/completions.zsh
source $ZSH_CONFIG_DIR/functions.zsh
source $ZSH_CONFIG_DIR/plugins.zsh

source <(fzf --zsh)
eval "$(starship init zsh)"
