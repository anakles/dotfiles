#!/usr/bin/env sh
set -euo

if test "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'prefer-light'"; then
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
else
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
fi
