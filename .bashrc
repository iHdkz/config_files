# /etc/skel/.bashrc:
# $Header: /virtual/aloe/cvsroot/dot.files/.bashrc,v 1.1 2007/09/04 05:38:36 aloe Exp $
# 
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.

#PATH=$PATH:$HOME/.local/bin
umask 022

# outputting anything in those cases.
# Shell is non-interactive.  Be done now
[[ $- != *i* ]] && return

shopt -u cdspell cdable_vars sourcepath # unset options
shopt -s checkwinsize checkhash extglob # set options
shopt -s hostcomplete no_empty_cmd_completion

fpath=${HOME}/.local/functions
source ${fpath}/conf.sh
source ${fpath}/bash_funcs.sh

PS1=$(clrs 9)'$([[ $? != 0 ]] && echo -ne "X")'$(clrs 10)['$(__abbrev_pwd)']
export PS1=$PS1$(clrs 44)": "$(clrs -1)
export PS2=$(clrs 111)-:$(clrs -1)
export PROMPT_COMMAND="__set_title;"
#function update_teminal_cwd is defined in /etc/bashrc

