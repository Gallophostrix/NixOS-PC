#!/usr/bin/env bash
if [[ $(hyprctl activewindow -j | jq -r ".class") == "Steam" ]]; then
    hyprctl dispatch movetoworkspacesilent special:steam
else
    hyprctl dispatch killactive ""
fi
