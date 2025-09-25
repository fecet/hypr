#!/bin/bash

killall input-leaps
killall input-leap
systemctl --user restart xdg-desktop-portal-hyprland.service
QT_SCALE_FACTOR=1 setsid input-leap
