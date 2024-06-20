function certificate
    openssl s_client -showcerts -connect $argv:443 </dev/null
end
