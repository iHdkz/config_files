# /etc/skel/.bash_profile:
# $Header: /virtual/aloe/cvsroot/dot.files/.bash_profile,v 1.1 2007/09/04 05:39:53 aloe Exp $
# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.

# Set up Japanese environment
#SHELL=$(which bash)

chk_and_source() { [[ -f "$1" ]] && . "$1" ; }
chk_and_source "$HOME/.profile"
chk_and_source "/opt/local/etc/profile.d/bash_completion.sh"

echo ".bash_profile loded"

#[[ -z ${TMUX} ]] && [[ $SHLVL == 1 ]] && [[ -x $(which tmux) ]] && exec tmux
