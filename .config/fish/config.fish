if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

#
# The next two settings are taken from https://www.reddit.com/r/fishshell/comments/176ahss/tip_you_can_use_function_subfolders_with_this/.
#
# add function subdirs to fish_function_path. Basically any function inside of a folder in functions/ will also be added to the path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# add completion subdirs to fish_completion_path.
set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path


set -gx ANDROID_SDK /home/purzel/Android/Sdk
set -gx DOCKER_CONFIG "$HOME/.docker"
set -gx EDITOR nvim
set -gx FZF_DEFAULT_OPTS "--bind up:preview-up,down:preview-down"
set -gx JDTLS_JVM_ARGS "-javaagent:$HOME/.local/share/java/lombok-1.18.32.jar" # download lombok from https://projectlombok.org/download
set -gx MANPAGER "nvim +Man!"
set -gx nvm_default_version "v16.3.0"
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx PATH "$HOME/fvm/default/bin" $PATH
set -gx PATH "$HOME/go/bin" $PATH


# aliases

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
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# sourcing
fzf --fish | source
starship init fish | source
