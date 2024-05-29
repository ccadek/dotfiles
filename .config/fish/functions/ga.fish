function ga -w 'git add'
    if not any-arguments $argv
        git add . 
    else
        git add $argv 
    end
end
