#!/bin/zsh

# automatically ls after a cd
function chpwd() {
    emulate -L zsh
    ls
}

wd() {
    . $ZSH_PLUGIN_DIR/wd/wd.sh
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
