function dcu 
  if any-arguments $argv
    docker compose -f $argv[1] up
  else 
    docker compose up
  end
end
