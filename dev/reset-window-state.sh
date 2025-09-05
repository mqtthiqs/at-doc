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
  elif [ "$2" = "Principale" ]; then
   cat >> "$path" <<EOF
  <VALUE name="windowState" val="742 334 1309 907"/>
  <VALUE name="scaleFactor" val="0.9170040488243103"/>
  <VALUE name="modulationPaneHeight" val="68.3206%"/>
EOF
  else
   echo "Unknown profile"
   exit 1
  fi
fi

echo "</PROPERTIES>" >> "$path"
