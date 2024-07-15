if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

if status is-interactive && set --query nvm_default_version && ! set --query nvm_current_version
    nvm use --silent $nvm_default_version
end
# sourcing
fzf --fish | source
starship init fish | source
