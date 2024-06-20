function update-docker-compose
    set download_url $(curl https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url | cut -d : -f 2,3 | grep -E 'linux-x86_64"$' | tr -d \")
    set download_url (string trim $download_url) # need to strip whitespace in front of url. otherwise curl complains
    curl -SL $download_url -o $DOCKER_CONFIG/cli-plugins/docker-compose
    chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

    echo "Updated Docker Compose to version $(docker compose version --short)"
end
