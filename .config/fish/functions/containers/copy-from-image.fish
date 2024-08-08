function copy-from-image
    # finish later
    set container_id $(docker create $argv[1])
    docker cp $container_id:$argv[2] $argv[3]
    docker rm -v $container_id

    echo $container_id
end
