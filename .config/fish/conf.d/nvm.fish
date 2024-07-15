set --query nvm_mirror || set --global nvm_mirror https://nodejs.org/dist
set --query XDG_DATA_HOME || set --local XDG_DATA_HOME ~/.local/share
set --global nvm_data $XDG_DATA_HOME/nvm



