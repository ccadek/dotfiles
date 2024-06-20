function dpsp
    docker ps --format "table {{.Names}}\\t{{.Image}}\\t{{.Ports}}\\t{{.RunningFor}} ago\\t{{.Status}}"
end
