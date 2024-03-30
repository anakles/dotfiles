#!/usr/sbin/env fish

# Define Colors
set GREEN green
set BLUE blue
set RED red
set WHITE white

# Define Symbols
set GIT_NORMAL ""
set GIT_ALT ""
set GIT_PULL ""
set GIT_COMMIT ""
set GIT_COMPARE ""
set GIT_FORK ""
set GIT_MERGE ""
set GIT_BRANCH ""

# Run rdy to update vars
source "$HOME/.config/fish/functions/rdy.fish"
# nohup rdy >/dev/null &

# source current var file
source "$HOME/.config/rdy/vars.fish"

# Build strings for each GIT var:
set stringTotal "$GIT_ALT ($RDY_CLEAN_REPOS/$RDY_TOTAL_REPOS)"
set stringDirty "$GIT_FORK  $RDY_DIRTY_REPOS"
set stringClean "$GIT_BRANCH  $RDY_CLEAN_REPOS"
set stringPull "$GIT_PULL  $RDY_PULL_REPOS"
set stringCommit "$GIT_COMMIT  $RDY_COMMIT_REPOS"
set stringPush "$GIT_MERGE  $RDY_PUSH_REPOS"

# echo "TOTAL: $stringTotal"
# echo "COMMIT: $stringCommit"
# echo "PULL: $stringPull"
# echo "PUSH: $stringPush"

# Build return string
set returnString "$stringTotal | $stringPull | $stringCommit"

# set_color green
echo $returnString
return 0
