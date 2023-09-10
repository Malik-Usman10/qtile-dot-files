#!/usr/bin/env bash 

COLORSCHEME=SolarizedDark 
setxkbmap gb


### CHECKS IF VIRTUAL MACHINE ###
# If so, this sets an appropriate screen resolution.
# This is needed as part of DTOS.


### AUTOSTART PROGRAMS ###
#lxsession &
#picom &
#copyq &
#nm-applet &

### UNCOMMENT ONLY ONE OF THE FOLLOWING THREE OPTIONS! ###
# 1. Uncomment to restore last saved wallpaper
#xargs xwallpaper --stretch < ~/.cache/wall &
# 2. Uncomment to set a random wallpaper on login
# find /usr/share/backgrounds/dtos-backgrounds/ -type f | shuf -n 1 | xargs xwallpaper --stretch &
# 3. Uncomment to set wallpaper with nitrogen
#nitrogen --restore &

### SETS CONKY STYLE BASED ON SCREEN RESOLUTION
# Checks screen resolution.  If 1080p or higher, then we use '01' conky.
# If less than 1080p (laptops?), then we use the smaller '02' conky.
#resolutionHeight=$(xrandr | grep "primary" | awk '{print $4}' | awk -F "+" '{print $1}' | awk -F 'x' '{print $2}')

#if [[ $resolutionHeight -ge 1080 ]]; then
#    killall conky || echo "Conky not running."
#    sleep 2
#    conky -c "$HOME"/.config/conky/qtile/01/"$COLORSCHEME".conf || echo "Couldn't start conky."
#elif [[ $resolutionHeight -lt 1080 ]]; then
#    killall conky || echo "Conky not running."
#    sleep 2
#    conky -c "$HOME"/.config/conky/qtile/02/"$COLORSCHEME".conf || echo "Couldn't start conky."
#else
#    killall conky || echo "Conky not running."
#    sleep 2
#    conky -c "$HOME"/.config/conky/qtile/02/"$COLORSCHEME".conf || echo "Couldn't start conky."
#fi
