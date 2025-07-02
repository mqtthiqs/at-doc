#!/bin/bash

# resets settings that influence screenshots

filename=com.INAgrm.GRMTools.Atelier.settings
path="$HOME/Library/Application Support/$filename"

cat "$path" | grep -v scaleFactor | grep -v modulationPaneHeight | grep -v windowState | grep -v "</PROPERTIES>" > "/tmp/$filename"
mv "/tmp/$filename" "$path"

if [ "$1" = "--profile" ]; then
  if [ "$2" = "Carrousel" ]; then
   cat >> "$path" <<EOF
  <VALUE name="scaleFactor" val="0.5000000596046448"/>
  <VALUE name="modulationPaneHeight" val="74.2503%"/>
  <VALUE name="windowState" val="200 200 2400 1076"/>
EOF
  else
   echo "Unknown profile"
   exit 1
  fi
fi

echo "</PROPERTIES>" >> "$path"
