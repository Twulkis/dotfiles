#!/bin/bash

# Save directory
DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

# Timestamped filename
FILE="$DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Take full-screen screenshot and save
grim "$FILE"

# Also copy to clipboard
wl-copy <"$FILE"

# Notification
notify-send "Screenshot Taken" "Saved to $FILE and copied to clipboard."
