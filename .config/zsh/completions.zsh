#!/bin/zsh

### autocompletion should be case insensitive 
fpath=($ZSH_CONFIG_DIR/completions \\$fpath)

autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':autocomplete:*' min-input 4
