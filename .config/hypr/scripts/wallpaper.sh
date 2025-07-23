#!/bin/bash

# Kill any existing swaybg processes
pkill swaybg

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/wallpapers"

# Find a random wallpaper (supports .jpg, .png, .jpeg)
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | shuf -n 1)

# Fallback if nothing found
if [ -z "$WALLPAPER" ]; then
  echo "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

# Set the wallpaper using swaybg
swaybg -i "$WALLPAPER" -m fill
