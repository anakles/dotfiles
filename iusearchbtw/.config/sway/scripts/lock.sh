#!/bin/bash

source "$HOME/.cache/wal/colors.sh"

#/usr/bin/swaylock -i $wallpaper \
#	--indicator-caps-lock \
#	--show-failed-attempts \
#	--indicator-idle-visible \
#	--clock \
#	--datestr "%A\n %d %B %Y" \
#	--fade-in 2 \
#	--indicator-radius 120 \
#	--ring-clear-color "$color2" \
#	--ring-wrong-color "$color5" \
#	--ring-ver-color "$color3"

# From:
# https://www.reddit.com/r/swaywm/comments/mtc11k/swaylock_trying_to_have_a_somewhat_nice_locker/
#
/usr/bin/swaylock \
	--show-failed-attempts \
	--indicator-idle-visible \
	--indicator-caps-lock \
	--indicator-radius 160 \
	--indicator-thickness 20 \
	--inside-color 00000000 \
	--inside-clear-color 00000000 \
	--inside-ver-color 00000000 \
	--inside-wrong-color 00000000 \
	--key-hl-color "$color1" \
	--bs-hl-color "$color2" \
	--ring-color "$background" \
	--ring-clear-color "$color2" \
	--ring-wrong-color "$color5" \
	--ring-ver-color "$color3" \
	--line-uses-ring \
	--line-color 00000000 \
	--text-color "$color2" \
	--text-clear-color "$color2" \
	--text-wrong-color "$color5" \
	--text-ver-color "$color4" \
	--separator-color 00000000 \
	\
	--grace 3 \
	--fade-in 3 \
	--effect-blur 10x10 \
	--clock \
	--datestr "%d %B %Y" \
	-i $wallpaper # 	--screenshot \
