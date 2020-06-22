sleep 0.1
dunstify "$(cmus-remote -Q | grep "tag artist" | cut -b 11-)" "$(cmus-remote -Q | grep "tag title" | cut -b 11-)" -r 1
