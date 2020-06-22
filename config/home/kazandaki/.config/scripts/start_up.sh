feh --no-fehbg --bg-scale ~/.config/walp/walp.jpg

i3-msg "workspace 10; append_layout ~/.config/i3/music.json"

urxvt -name cmus -e cmus &

i3-msg "workspace 2; append_layout ~/.config/i3/main_layout.json"

urxvt -e cava &
urxvt -name ranger -e ranger &,
urxvt -name console &

i3-msg "workspace 1; append_layout ~/.config/i3/firefox.json"

firefox
