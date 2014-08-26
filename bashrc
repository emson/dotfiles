
# Ben's .bashrc file

if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi


# path settings
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH
export SHELL='bash'
export EDITOR='vim'

# ===== Initialisations =====


# eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Added Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

