
# Run for login shell
status --is-login; and begin

    # Setting other ENV vars:
    set -U SSH_AUTH_SOCK /run/user/1000/ssh-agent.socket

end


# For interactive shells:
if status is-interactive
    # Commands to run in interactive sessions can go here

    # Abbreviations for commands (aliases):
    abbr --add -- v nvim
    abbr --add -- vim nvim
    abbr --add -- clip xclip -sel clip
    abbr --add -- jiggle ~/.config/i3/scripts/mouse.py
    abbr --add -- shared cd ~/SharedFolder/
    abbr --add -- poly .config/polybar/launch.sh
    abbr --add -- android-studio /opt/android-studio/bin/studio.sh

    # Expert-Share configuration:
    abbr --add -- expertshare "sudo mount -v -t cifs //expert-share.usd.de/kunden/ /media/expert-share/ -o username=nbetz,uid=1000,gid=1000,file_mode=0660,dir_mode=0770,vers=3.11,domain=USD;cd /media/expert-share"
    abbr --add -- expertshare-unmount "sudo umount /media/expert-share"

    # Updating PATH variable
    set -U fish_user_paths $fish_user_paths ~/.local/bin ~/go/bin /home/nbetz/Scripts
    set -g fish_greeting

    set -g EXPERT ~/.config/expert-share-helper/expert/

    # PyWal Color Scheme:
    cat ~/.cache/wal/sequences

    # For direnv:
    direnv hook fish | source
    set -g direnv_fish_mode disable_arrow

    # Launch TMUX on shell start:
    if status is-interactive
        and not set -q TMUX
        exec tmux
    end
end


# Adding autojump functionality:
begin
    set --local AUTOJUMP_PATH /home/nbetz/Repos/autojump/bin/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
