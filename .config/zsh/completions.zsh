#!/bin/zsh

### autocompletion should be case insensitive 
fpath=($ZSH_CONFIG_DIR/completions \\$fpath)
fpath=($ZSH_PLUGIN_DIR/wd \\$fpath)
autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':autocomplete:*' min-input 4

autoload predict-on
