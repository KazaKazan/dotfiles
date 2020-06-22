dunstify "Battery" "$(cat /sys/class/power_supply/BAT0/capacity)% | $(cat /sys/class/power_supply/BAT0/status)" -r 3
