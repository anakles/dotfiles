
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

    # Updating PATH variable
    set -U fish_user_paths $fish_user_paths ~/.local/bin ~/go/bin /home/nbetz/Scripts
    set -g fish_greeting

    # PyWal Color Scheme:
    # cat /home/nbetz/.cache/wal/sequences

end


# Adding autojump functionality:
begin
    set --local AUTOJUMP_PATH /home/nbetz/Repos/autojump/bin/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
