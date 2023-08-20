#!/bin/sh

waltile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

waltile "/home/kali/Pictures/Wallpapers/icymountains.jpeg"

