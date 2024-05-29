function gr --w './gradlew'
    if not test -e ./gradlew
        echo 'You are not in a Gradle project'
        return 1
    end
    if test -x ./gradlew 
        chmod +x ./gradlew
    end
    ./gradlew $argv
end
