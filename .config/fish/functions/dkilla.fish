function dkilla
    docker kill $(docker ps --format '{{.ID}}')
end
