
# Ben's .bash_profile file

# path settings
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH" ### Added by the Heroku Toolbelt
export ANDROID_HOME="/Users/BEmson1/Library/AndroidSDK/android-sdk-macosx"
export PATH="$PATH:~/scripts:$ANDROID_HOME/platform-tools"
export PATH=$PATH
export SHELL='bash'
export EDITOR='vim'
#export VISUAL=$EDITOR

# set Environment Variables
source $HOME/.assign_env.sh

# ===== Initialisations =====

# autocompletions

# todo.txt: https://github.com/ginatrapani/todo.txt-cli/wiki/Quick-Start-Guide
# requires: sudo cp -r /usr/local/Cellar/todo-txt/2.9/etc/ /etc
# source todo_completion
export TODOTXT_DEFAULT_ACTION=ls

# ===== includes =====

#source ~/scripts/mysql_utils.sh


# ===== aliases =====

alias cd..='cd ..'
alias ls='ls -F'
alias ll='clear;pwd;ls -la'
alias path='echo -e ${PATH//\:/\\n}'
alias openrails='open http://localhost:3000'
alias g='git'
alias gst='git status'
alias gpl='git pull'
alias gplo='git pull origin'
alias gps='git push'
alias gpso='git push origin'
alias gbr='git branch'
alias gco='git checkout'
alias gci='git commit'
alias gd='git diff'
alias gdiff='git diff'
alias gadd='git add'
alias bi='bundle install'
alias be='bundle exec'
alias b='bundle'
alias dx='cd ~/Dropbox/devel/'
alias dl='cd ~/devel/'
alias o2='cd ~/devel/o2/'
alias mdn='open -a MacDown'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias mariastart="cd '/usr/local/opt/mariadb' ; /usr/local/opt/mariadb/bin/mysqld_safe --datadir='/usr/local/var/mysql'"
alias redisstart='redis-server'
alias t='todo.sh -n'
alias ct='clear; todo.sh -n'
alias rmsim='rm -rf /Users/BEmson1/Library/Application\ Support/iPhone\ Simulator/*'



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
# PS1="\[\033[1;34m\]\$\[\033[0m\] "
# PS1="\[\033[G\]\[\033[0m\]\W:\[\033[0;33m\]\$(parse_git_branch_appended)\[\033[0;32m\]\$ " # leaves line unbroken
PS1="\[\033[0m\]\W:\[\033[0;33m\]\$(parse_git_branch_appended)\[\033[0;32m\]\$ "

export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Added Tmuxinator
# [[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


