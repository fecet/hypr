#!/bin/bash
set -x

MODE_FILE="/tmp/hyprscroller-mode"

current_mode=$(cat "$MODE_FILE")

if [[ "$current_mode" =~ "Row" ]]; then
  hyprctl dispatch scroller:setmode row
  echo "Row" >"$MODE_FILE"
else
  hyprctl dispatch scroller:setmode column
  echo "Column" >"$MODE_FILE"
fi
