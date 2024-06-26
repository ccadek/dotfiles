function dps
  docker ps --format "{{.Names}}" -a | fzf --preview 'docker inspect {}'
end
