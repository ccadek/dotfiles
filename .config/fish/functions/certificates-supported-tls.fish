function certificates-supported-tls
    nmap --script ssl-enum-ciphers -p 443 $argv
end
