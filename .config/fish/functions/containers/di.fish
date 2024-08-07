function di --wraps='=docker images'
  docker images --format "{{.Repository}}:{{.Tag}}" | fzf --preview 'docker inspect {} | bat --language json --color=always --style=changes,numbers'
end
