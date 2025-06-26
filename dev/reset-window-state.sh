#!/bin/bash

# resets settings that influence screenshots

cat "$HOME/Library/Application Support/com.INAgrm.GRMTools.Atelier.settings" | grep -v scaleFactor | grep -v modulationPaneHeight | grep -v windowState > "/tmp/com.INAgrm.GRMTools.Atelier.settings"
mv "/tmp/com.INAgrm.GRMTools.Atelier.settings" "$HOME/Library/Application Support/com.INAgrm.GRMTools.Atelier.settings" 
