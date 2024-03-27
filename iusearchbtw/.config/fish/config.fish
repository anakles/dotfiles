status --is-login; and begin

    # Login shell initialisation

    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec /usr/bin/sway
    end


end


if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting

    # General Commands
    abbr --add -- v nvim
    abbr --add -- vim nvim
    abbr --add -- open xdg-open
    abbr --add -- clip wl-copy

    # Setting some variables
    set -U fish_user_paths $fish_user_paths ~/.local/bin ~/go/bin ~/Scripts/
    set -gx XDG_TOOLS_DIR /home/anakles/Repos/OSCPasting

    set -gx SSH_AUTH_SOCK /run/user/1000/ssh-agent.socket
end


begin
    set --local AUTOJUMP_PATH /home/anakles/Repos/autojump/bin/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
