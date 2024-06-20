function drm --wraps='docker rm' --wraps='docker kill'
    docker kill $argv
    docker rm $argv
end
