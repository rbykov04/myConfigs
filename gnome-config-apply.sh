#!/bin/bash

dconf load /org/gnome/desktop/input-sources/ < gnome.desktop.input-sourse >/dev/null
echo "- set change lang to shift+alt"

dconf load /org/gnome/desktop/.vm.keybindings/ < gnome.desktop.vm.keybindings>/dev/null
echo "- added shortcat for workspace"
