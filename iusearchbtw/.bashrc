#
# ~/.bashrc
#

# Starting sway on start:
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec sway
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source for tab completion
source /usr/share/bash-completion/bash_completion

# == Aliases ==

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lhA'
alias la='ls -lha'
alias v=nvim
alias ..='cd ..'
alias ~='cd ~'
alias clip=wl-copy

# Alias to set the headset as sound device
alias headset='pactl set-default-sink alsa_output.usb-SteelSeries_SteelSeries_Arctis_5_00000000-00.3.analog-game'
alias notes='cd ~/MEGA/Notes/Nikis_Notes/Obsidian_Notes/'
alias mega='cd ~/MEGA'

# == Expanding Path ==
# original: /usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=$PATH:~/.local/bin

# == Other ENV VARS ==
export XDG_CURRENT_DESKTOP=Sway
export GTK_THEME=Adwaita:dark

# == Remove history file ==
unset HISTFILE

# == Customizing and Reloading pywal Settings ==
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

PS1='[\u@\h \W]\$ '
