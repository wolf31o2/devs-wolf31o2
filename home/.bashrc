# $HOME/.bashrc
# $Id$

# This is my .bashrc... There are many like it, but this one is mine.

# Import system bashrc, if it exists.  Otherwise, check if we are interactive
# and proceed accordingly.
if [[ -r /etc/bash/bashrc ]] ; then
	source /etc/bash/bashrc
elif [[ -e /etc/bashrc ]] ; then
	source /etc/bashrc
elif [[ $- != *i* ]] ; then
	# Shell is not interactive, exit
	return
fi

# User information for echangelog
export ECHANGELOG_USER="Chris Gianelloni <wolf31o2@wolf31o2.org>"

export PORTAGE_GPG_DIR="~/.gnupg/"
export PORTAGE_GPG_KEY="84B7E981"
export GPG_HOME="~/.gnupg/"

export LC_ALL="en_US.UTF-8"

export PATH="${HOME}/bin:${PATH}"

# aliases
alias ll="ls -l"
alias cdrecord="/usr/bin/cdrecord -v -tao dev=/dev/sr0 driveropts=burnfree"
alias dvdrecord="/usr/bin/cdrecord -v -sao dev=/dev/sr0 driveropts=burnfree"

# EOF
