function drma

    docker rm $(docker ps --filter "status=exited" -q)

    for option in $argv
        switch "$option"
            case -a
                yes | docker volume prune -a
            case \*
                printf "no docker volumes pruned"
        end
    end
end
