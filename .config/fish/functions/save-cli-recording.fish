function save-cli-recording
    set last_recording (ls -t /tmp/wezterm-recording*.cast.txt | head -n 1)
    echo $last_recording
    wezterm replay --cat $last_recording >~/$argv[1]
end
