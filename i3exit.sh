#!/bin/sh


case "$1" in
    lock)
       	~/.config/i3blocks/lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend && ~/.config/i3blocks/lock
        ;;
    hibernate)
        systemctl hibernate && ~/.config/i3blocks/lock
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
