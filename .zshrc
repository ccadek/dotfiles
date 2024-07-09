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

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

if [ -d "$HOME/Android/Sdk" ] ; then
  export ANDROID_SDK="$HOME/Android/Sdk"
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

### SETTING OTHER ENVIRONMENT VARIABLES
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

### ALIASES ###
# utiltity to reset webcam hardware defaults. Useful so far whenever the camera decides to print out a white screen
alias fix_camera='guvcview -d /dev/video0'

alias cat='bat'
alias exi='exit'

# containers
alias d='docker'
alias crmdb-start='docker run -d -e POSTGRES_PASSWORD=78,3XdFc4]^b^R~@A -e POSTGRES_USER=crmUser -p 5431:5432 --name crmdb postgres:12-alpine'
alias dka='docker kill $(docker ps --format "{{.ID}}")'
alias dps='docker ps --format "{{.Names}}" -a | fzf --preview "docker inspect {}"'
alias dpsp='docker ps --format "table {{.Names}}\\t{{.Image}}\\t{{.Ports}}\\t{{.RunningFor}} ago\\t{{.Status}}"'
alias p='podman'
alias temp-shell='docker run -it --rm ubuntu bash'

# ls
alias ls='eza --group-directories-first'
alias ll='eza --group-directories-first -lh'
alias la='eza --group-directories-first -a'

# git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='_fzf_search_git_status'
alias gl='git pull'
alias glg='_fzf_search_git_log'
alias gm='git merge'
alias gp='git push'
alias gsd='git stash && git stash drop'
alias gst='git status'

# neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"


# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### autocompletion should be case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':autocomplete:*' min-input 4


# automatically ls after a cd
function chpwd() {
    emulate -L zsh
    ls -a
}

# lazy load nvm 
# taken from https://broken-by.me/lazy-load-nvm/
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}
node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}
npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

source <(fzf --zsh)
eval "$(starship init zsh)"
