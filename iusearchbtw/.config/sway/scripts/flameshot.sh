#!/bin/bash

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
flameshot gui
