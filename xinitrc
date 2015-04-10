#!/usr/bin/env bash
sleep 1
killall gnome-settings-daemon &
killall nm-applet &
killall ibus-daemon &
# launches a session dbus instance
#if [ -z "$DBUS_SESSION_BUS_ADDRESS" ] && type dbus-launch >/dev/null; then
#  eval $(dbus-launch --sh-syntax --exit-with-session)
#fi

#xsetroot -solid black &
#gnome-screensaver &
#gnome-settings-daemon &    
#gnome-power-manager &      
nm-applet &                 
#ibus-daemon -d
#update-notifier &
#mail-notification &
[ -f ${HOME}/.Xmodmap ] && xmodmap ${HOME}/.Xmodmap
[ -f ${HOME}/.Xresources ] && xrdb ${HOME}/.Xresources
killall gnome-screensaver &
[ -f ${HOME}/bin/fetchmail.multi.sh ] && ${HOME}/bin/fetchmail.multi.sh
#xrandr --output DP-0 --auto
#xrandr --output DP-1 --right-of DP-0 --auto
#exec awesome -c ${HOME}/.config/awesome/rc.lua
exec awesome
#exec /usr/bin/fvwm-crystal
#exec /usr/bin/fvwm
#exec /usr/bin/fvwm-themes-start
