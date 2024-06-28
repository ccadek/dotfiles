function fd
  set preview $(git diff $argv --color=always)
  echo $preview
  git diff $argv --name-only | fzf -m --ansi --preview $preview
end
