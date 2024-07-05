function ex
  if not test -e $argv[1];
    echo "Unable to extract $argv[1]. It does not exist"
    return 1
  end
  if not test -f $argv[1];
    echo "Unable to extract $argv[1]. It is not a file"
    return 1
  end

  switch $argv[1]
  case "*.tar.gz"
    tar xzf $argv[1]
  case "*.gz"
    tar xf $argv[1]
  case "*.zip"
     unzip $argv[1]
  case '*'
    echo 'Unknown archive format. Not extracting anything'
  end
end
