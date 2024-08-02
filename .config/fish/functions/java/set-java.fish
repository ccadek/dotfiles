function set-java -d "Arch only. Set the currently active Java"
  find /usr/lib/jvm/java-* > /dev/null 2>&1
  if test $status -ne 0
    echo ""
    echo "No Java SDKs available under /usr/lib/jvm. Please install a JVM at that location"
    return 1
  end
  set java (find /usr/lib/jvm/java-* -maxdepth 0 -type d -printf "%f\n" | fzf)
  sudo archlinux-java set $java
  javac -version
end
