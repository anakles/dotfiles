function autotype
    set input $(/usr/bin/xclip -o)
    echo "Switch to window now! (1 SECOND)" && notify-send "Switch to window now! (1 SECOND)"
    sleep 1
    setxkbmap de
    xdotool type "$input"
end
