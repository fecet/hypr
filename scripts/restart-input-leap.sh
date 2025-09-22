#!/bin/bash

killall input-leaps
killall input-leap
systemctl --user restart xdg-desktop-portal-hyprland.service
setsid input-leap
