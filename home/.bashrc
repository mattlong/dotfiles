#!/bin/bash
##PS4='+ $(gdate "+%s.%N")\011 '
##exec 3>&2 2>/tmp/bashstart.$$.log
##set -x

source $HOME/.homesick/repos/dotfiles/bash/rc

## set +x
## exec 2>&3 3>&-
. "$HOME/.cargo/env"
