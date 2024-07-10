#!/bin/zsh

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"
export TERM="xterm-256color"

export DOCKER_CONFIG="$HOME/.docker"
export FZF_DEFAULT_OPT="--bind up:preview-up,down:preview-down"
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok-1.18.32.jar" # download lombok from https://projectlombok.org/download
export nvm_default_version="v16.3.0"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"



### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ] ;
  then PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

if [ -d "$HOME/.cargo" ] ; 
  then PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/fvm/default/bin" ] ; 
  then PATH="$HOME/fvm/default/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ] ; 
  then PATH="$HOME/go/bin:$PATH"
fi

### XDG environment variables 
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi

if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

if [ -d "$HOME/Android/Sdk" ] ; then
  export ANDROID_SDK="$HOME/Android/Sdk"
fi

if [ -z "$ZSH_CONFIG_DIR" ] ; then
  export ZSH_CONFIG_DIR="$XDG_CONFIG_HOME/zsh"
fi

if [ -z  "$ZSH_PLUGIN_DIR" ] ; then
  export ZSH_PLUGIN_DIR="$ZSH_CONFIG_DIR/plugins"
fi
