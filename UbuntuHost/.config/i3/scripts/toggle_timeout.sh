#!/bin/env bash

# Function to check and display the current screensaver state
status() {
  current_timeout=$(xset q | grep "timeout:" | awk '{print $2}')
  if [ "$current_timeout" -eq 0 ]; then
    # Case: is inactive
    echo ""
  else
    # Case: is active
    echo ""
  fi
}

# Function to toggle the screensaver state
toggle() {
  current_timeout=$(xset q | grep "timeout:" | awk '{print $2}')
  if [ "$current_timeout" -eq 0 ]; then
    xset s 600 # Set screensaver timeout to 600 seconds
    notify-send "Screensaver" "Screensaver timeout set to 600 seconds."
  else
    xset s off # Disable screensaver
    notify-send "Screensaver" "Screensaver turned off."
  fi
}

# Main script logic: check the first argument passed to the script
if [ "$1" == "status" ]; then
  status
elif [ "$1" == "toggle" ]; then
  toggle
else
  echo "Usage: $0 {status|toggle}"
fi
