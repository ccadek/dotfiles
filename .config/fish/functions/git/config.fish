function config -w git
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end
