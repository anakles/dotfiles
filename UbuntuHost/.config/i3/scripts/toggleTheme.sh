#!/usr/bin/env sh
set -euo

ALACRITTYCONF="/home/nbetz/.config/alacritty/alacritty.toml"

LIGHTTHEME="catppuccin-latte.toml"
DARKTHEME="catppuccin-frappe.toml"

sed -i "s/${LIGHTTHEME}/${DARKTHEME}/" "$ALACRITTYCONF"

if test "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'prefer-light'"; then
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark
	gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

	sed -i "s/${LIGHTTHEME}/${DARKTHEME}/" "$ALACRITTYCONF"
else
	gsettings set org.gnome.desktop.interface color-scheme prefer-light
	gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'

	sed -i "s/${DARKTHEME}/${LIGHTTHEME}/" "$ALACRITTYCONF"
fi
