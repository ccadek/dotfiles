function image_data
    echo $(identify -format '%[colorspace]' $argv)
    echo $(file $argv)
end
