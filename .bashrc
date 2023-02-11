# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# History settings
# Don't put lines starting with space in the history
HISTCONTROL=ignorespace
# Append to the history file rather than overwriting it
shopt -s histappend
# Manage history file size and length
HISTSIZE=1000  # the number of commands to remember
HISTFILESIZE=2000  # the number of lines to save

# Custom aliases
alias grep='grep --color=auto'
alias ls='ls -N --color=auto'

# Put your fun stuff here.
# Enables ^s and ^q in rTorrent, when running in screen
stty -ixon -ixoff
