function dp
  docker ps --format "{{.Names}}" | fzf --preview 'docker inspect {} | bat --language json --color=always --style=changes,numbers'
end
