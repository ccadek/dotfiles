function _add_to_path
  if [ -e $argv[1] ]
    set -gx PATH $argv[1] $PATH
  end
end


if [ -z "$XDG_CONFIG_HOME" ]
  set -gx XDG_CONFIG_HOME "$HOME/.config"
end

if [ -z "$XDG_DATA_HOME" ]
    set -gx XDG_DATA_HOME "$HOME/.local/share"
end

if [ -z "$XDG_CACHE_HOME" ]
    set -gx XDG_CACHE_HOME "$HOME/.cache"
end

if [ -z "$FVM_CACHE_PATH" ]
    set -gx FVM_CACHE_PATH "$HOME/.fvm-installed"
end

set -gx ANDROID_SDK /home/purzel/Android/Sdk
set -gx DOCKER_CONFIG "$HOME/.docker"
set -gx EDITOR nvim
set -gx FZF_DEFAULT_OPTS "--bind up:preview-up,down:preview-down"
set -gx JDTLS_JVM_ARGS "-javaagent:$HOME/.local/share/java/lombok-1.18.32.jar" # download lombok from https://projectlombok.org/download
set -gx MANPAGER "nvim +Man!"
set -gx nvm_default_version "v16.3.0"
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
set -gx VISUAL "nvim"

_add_to_path "/home/purzel/.cargo/bin"
_add_to_path "$HOME/go/bin"
_add_to_path "$HOME/.local/share/JetBrains/Toolbox/scripts"
_add_to_path "$FVM_CACHE_PATH/default/bin"
