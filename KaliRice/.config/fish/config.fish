if status is-interactive
    # Commands to run in interactive sessions can go here
    
    abbr --add -- vim nvim
    abbr --add -- v nvim
    abbr --add -- clip xclip -sel clip

    abbr --add -- rmg java -jar ~/Repos/remote-method-guesser/target/rmg-5.0.0-jar-with-dependencies.jar 
    
    # Append USER PATH variable
    set -U fish_user_paths $fish_user_paths ~/.local/bin ~/go/bin /opt/kiterunner

    # Set ToolsDir for OSCPasting
    set -gx XDG_TOOLS_DIR ~/Repos/OSCPasting/

    # Disable the greeting
    set -g fish_greeting
end

begin
    set --local AUTOJUMP_PATH /home/nbetz/Repos/autojump/bin/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

