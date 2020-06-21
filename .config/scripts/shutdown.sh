FOREGROUND=$(echo $(xrdb -query | grep '*.color2') | cut -d " " -f 2)
BACKGROUND=$(echo $(xrdb -query | grep '*.color8') | cut -d " " -f 2)
ACCENT=$(echo $(xrdb -query | grep '*.color3') | cut -d " " -f 2)

DMENU="dmenu -i -nf $FOREGROUND -nb $BACKGROUND -sb $BACKGROUND -sf $ACCENT -fn 'monospace-11' -p Session:"

echo $FOREGROUND

choice=$(echo -e "Logout\nReboot\nShutdown" | $DMENU)

case "$choice" in
	Logout) i3-msg exit & ;;
	Reboot) sudo reboot ;;
	Shutdown) sudo shutdown now ;;
esac
