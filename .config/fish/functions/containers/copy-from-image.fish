function copy-from-image
    # finish later
    set id=$(docker create $argv[1])
    docker cp (id):(argv[2]) - >(argv[3])
    docker rm -v (id)
end
