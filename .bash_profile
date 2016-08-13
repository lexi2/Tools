

#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
	export PS1='\[\033[01;36m\] \W \[\033[01;33m\] $(vcprompt)\[\033[01;35m\]->\[\033[0m\] '
	export PS2=" \W => "

#   Set Colours
#   ------------------------------------------------------------
	export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad
	alias ls='ls -GFh'

#   Set Paths
#   ------------------------------------------------------------
	export PATH="$PATH:/usr/local/bin"
	export PATH="$HOME/.rbenv/bin:$PATH"
		eval "$(rbenv init -)"
	# export PATH="/usr/local/php5/bin:$PATH"
	# export PATH="/usr/local/php5/bin/pear:$PATH"
	export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"


#   Set Default Editor
#   ------------------------------------------------------------
	export EDITOR=/usr/local/bin/sublime


#   ---------------------------------------
#   SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

	alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
	alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
	alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#   showFiles:   Show hidden files in Finder
#   hideFiles:   Hide hidden files in Finder
#   -------------------------------------------------------------------
	alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
	alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#   ---------------------------------------
#   WEB DEVELOPMENT
#   ---------------------------------------

alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file

alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   ---------------------------------------
#    General Preferences
#   ---------------------------------------


alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
# alias less='less -FSRXc'                    # Preferred 'less' implementation
# cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='sublime'                           # edit:         Opens any file in sublime editor
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
