# taken from https://github.com/rstacruz/fish-autols/blob/master/conf.d/autols.fish
function __autols_hook --description "Auto ls" --on-event fish_prompt
    if test "$__autols_last" != (pwd)
        echo; ls
    end
    set -g __autols_last (pwd)
end
