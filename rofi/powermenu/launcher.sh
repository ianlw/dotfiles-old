#!/usr/bin/sh

# Options
roficonfig=~/.config/rofi/powermenu/config.rasi
roficonfirm=~/.config/rofi/powermenu/config-confirm.rasi
shutdown=''
reboot=''
lock=''
suspend=''
logout=''
yes=''
no=''
opt="$shutdown\n$suspend\n$reboot\n$lock\n$logout"
confirm="$yes\n$no"
rofi=$(printf "$opt" | rofi -config $roficonfig -dmenu -i)
[ -z "$rofi" ] && exit

case $rofi in
    "$shutdown")
    roficonfirm=$(printf "$confirm" | rofi -config $roficonfirm -dmenu -i)
    [ -z "$roficonfirm" ] && exit
        if [ "$roficonfirm" = "$yes" ]; then
            shutdown now
        fi
        ;;
    "$reboot")
    roficonfirm=$(printf "$confirm" | rofi -config $roficonfirm -dmenu -i)
    [ -z "$roficonfirm" ] && exit
        if [ "$roficonfirm" = "$yes" ]; then
            systemctl reboot
        fi
        ;;
    "$suspend")
    roficonfirm=$(printf "$confirm" | rofi -config $roficonfirm -dmenu -i)
    [ -z "$roficonfirm" ] && exit
        if [ "$roficonfirm" = "$yes" ]; then
            systemctl suspend
        fi
        ;;
    "$logout")
    roficonfirm=$(printf "$confirm" | rofi -config $roficonfirm -dmenu -i)
    [ -z "$roficonfirm" ] && exit
        if [ "$roficonfirm" = "$yes" ]; then
         	bspc quit
        fi
        ;;
    "$lock")
    		/usr/bin/i3lock
        ;;
esac

