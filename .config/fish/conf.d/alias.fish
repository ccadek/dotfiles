status is-interactive || exit

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

