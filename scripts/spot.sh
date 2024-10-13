#!/bin/bash

# Extract metadata
ARTIST=$(playerctl --player=spotify metadata artist | fold -s -w 20)
TITLE=$(playerctl --player=spotify metadata title | fold -s -w 20)
ALBUM=$(playerctl --player=spotify metadata album | fold -s -w 20)

# Check if Spotify is playing
if [ "$(playerctl --player=spotify status)" == "Playing" ]; then
  
  # Print song info
  echo "Now playing:"
  echo "$TITLE"
  echo "---------------------------"
  echo "By: $ARTIST"
  echo "---------------------------"
  echo "From: $ALBUM"
fi
if [ "$(playerctl --player=spotify status)" == "Paused" ]; then
  echo "Music paused"
  echo "$TITLE"
  echo "---------------------------"
  echo "By: $ARTIST"
  echo "---------------------------"
  echo "From: $ALBUM"
  
fi
