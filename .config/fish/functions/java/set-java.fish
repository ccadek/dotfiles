function set-java
    set java (find /usr/lib/jvm/java-* -maxdepth 0 -type d -printf "%f\n" | fzf)
    sudo archlinux-java set $java
    javac -version
end
