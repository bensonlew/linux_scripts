#!/bin/bash 
export DISPLAY=:0 
eval "export $(pgrep -u $LOGNAME gnome-session | head -n 1 | xargs -I{} cat /proc/{}/environ | egrep -z DBUS_SESSION_BUS_ADDRESS)"
/usr/bin/notify-send -u critical  "stock  stock ---"
