function gccc
  git ls-files -m -o --exclude-standard | fzf -m --print0 | xargs -0 git add
end
