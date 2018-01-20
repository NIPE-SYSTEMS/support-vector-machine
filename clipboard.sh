#!/bin/sh

echo "data = np.array([$(xclip -selection clipboard -t image/png -o | convert - -colorspace Gray -resize 28x28\! txt:- | sed '/^#/ d' | cut -d ' ' -f6 | cut -d ',' -f1 | cut -c 7- | tr '\n' ',')])" | tr -d '\n' | xclip -selection clipboard
