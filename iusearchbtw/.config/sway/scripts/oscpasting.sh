#!/bin/bash

# Set vars
templateDir="$HOME/Repos/OSCPasting/templates/"

# Start CopyQ, if not running already:
copyq &

# Run rofi:
cd "${templateDir}"
file=$(find . -type f -not -path "./helper_scripts/*" -not -path "./source_code/*" | rofi -dmenu -i -p "Template")
esh "$file" | perl -pe 'chomp if eof' | copyq copy -
