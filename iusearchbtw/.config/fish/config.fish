status --is-login; and begin

    # Login shell initialisation

    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec /usr/bin/sway
    end


end

function fish_greeting
    source /home/anakles/.config/rdy/vars.fish

    echo -e "\n = Hello anakles! =\n"

    # Case: all repos are clean
    if test "$RDY_DIRTY_REPOS" -eq 0
        echo -e "Your repos are up to date :)"
    end
    # Case: You have unpulled repos
    if test "$RDY_PULL_REPOS" -ne 0
        echo -e 'You have unpulled changes. Make sure to run "rdy".'
    end
    # Case: You have uncommited or unpushed changes
    if test "$RDY_PUSH_REPOS" -ne 0 -o "$RDY_COMMIT_REPOS" -ne 0
        echo -e 'You have uncommitted / unpushed changes. Make sure to save your work.'
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    # set -g fish_greeting

    # General Commands
    abbr --add -- v nvim
    abbr --add -- vim nvim
    abbr --add -- open xdg-open
    abbr --add -- clip wl-copy

    # Setting some variables
    set -U fish_user_paths $fish_user_paths ~/.local/bin ~/go/bin ~/Scripts/
    set -gx XDG_TOOLS_DIR /home/anakles/Repos/OSCPasting

    set -gx SSH_AUTH_SOCK /run/user/1000/ssh-agent.socket

    # Color Scheme:
    set -gx GTK_THEME Adwaita:dark
end


begin
    set --local AUTOJUMP_PATH /home/anakles/Repos/autojump/bin/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
