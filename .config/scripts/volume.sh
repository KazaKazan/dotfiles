dunstify "Volume set to $(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')" -r 2