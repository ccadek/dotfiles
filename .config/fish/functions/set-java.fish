function set-java
    sudo archlinux-java set java-$argv[1]-openjdk
    javac -version
end
