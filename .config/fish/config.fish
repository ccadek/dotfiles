if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set fish_greeting ""

# download lombok from https://projectlombok.org/download
set -gx JDTLS_JVM_ARGS "-javaagent:$HOME/.local/share/java/lombok-1.18.32.jar"
set -gx nvm_default_version "v16.3.0"
set -gx ANDROID_SDK /home/purzel/Android/Sdk
set -gx forgit_checkout_commit zzzzzzzzgcooooooo
fish_add_path -g -p $HOME/fvm/default/bin
fish_add_path -g -p $HOME/go/bin

set -x PATH "$HOME/.cargo/bin" $PATH

# docker config home
# used to install docker-compose manually
# check https://docs.docker.com/compose/install/linux/
set -gx DOCKER_CONFIG "$HOME/.docker"

# initialize pyenv
pyenv init - | source

# source fzf
fzf --fish | source

# prompt setting

set -U hydro_color_git red
set -U hydro_color_pwd green
set -U hydro_color_prompt blue
set -U hydro_symbol_git_dirty " ✗"

#
# The next two settings are taken from https://www.reddit.com/r/fishshell/comments/176ahss/tip_you_can_use_function_subfolders_with_this/.
#
# add function subdirs to fish_function_path. Basically any function inside of a folder in functions/ will also be added to the path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# add completion subdirs to fish_completion_path.
set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path
