xrandr --setprovideroutputsource 1 0
xrandr --screen 0 --fb 3840x1080
xrandr --output HDMI-1-0 --mode 1920x1080 -r 59.94 --pos 1920x0
pkill gammastep
gammastep-indicator &
disown
