
# Ben's .bash_profile file

# path settings
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PATH="$PATH:~/scripts:"
export PATH=$PATH
export EDITOR='vim'
#export VISUAL=$EDITOR


# ===== Initialisations =====


# ===== includes =====

#source ~/scripts/mysql_utils.sh


# ===== aliases =====

alias cd..='cd ..'
alias ls='ls -F'
alias ll='clear;pwd;ls -la'
alias path='echo -e ${PATH//\:/\\n}'
alias openrails='open http://localhost:3000'
alias bi='bundle install'
alias be='bundle exec'
alias b='bundle'
alias ht='cd ~/devel/housetrip/'
alias rs='cd ~/devel/rails/'
alias ry='cd ~/devel/ruby/'
alias dx='cd ~/Dropbox/devel/'
alias fd='cd ~/Dropbox/devel/ruby/flashdown'
alias o2='cd ~/devel/o2/'
alias mou='open -a Mou'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'



# ====== functions =====

# function to change directory to the one set in the last opened finder.
cdf () {
   currFolderPath=$( /usr/bin/osascript <<"			EOT"
       tell application "Finder"
           try
               set currFolder to (folder of the front window as alias)
           on error
               set currFolder to (path to desktop folder as alias)
           end try
           POSIX path of currFolder
       end tell
			EOT
   )
   echo "cd to \"$currFolderPath\""
   cd "$currFolderPath"
}

# change file to lower case
lower () {
	for i in "$1"; do 
	    mv "$i" "`echo $i| tr [A-Z] [a-z]`";
	done
}



# Git branch in prompt
function parse_git_branch_appended {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo -ne "("${ref#refs/heads/}")"
}


RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

# PS1="\[$GREEN\]\h:\W \[$YELLOW\]\$(parse_git_branch)\[$GREEN\]\[\$\] "
# PS1='\[\033[1;34m\]\$\[\033[0m\] '
# PS1="\[\033[G\]\[\033[0m\]\W:\[\033[0;33m\]\$(parse_git_branch_appended)\[\033[0;32m\]\$ " # leaves line unbroken
PS1="\[\033[0m\]\W:\[\033[0;33m\]\$(parse_git_branch_appended)\[\033[0;32m\]\$ "

export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
