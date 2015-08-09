# Script to set up the dotfiles
# create symbolic links to all the dotfiles and directories
ln  -sF  $HOME/Dropbox/dotfiles/bash_profile   $HOME/.bash_profile
ln  -sF  $HOME/Dropbox/dotfiles/bashrc         $HOME/.bashrc
ln  -sF  $HOME/Dropbox/dotfiles/iex.exs        $HOME/.iex.exs
ln  -sF  $HOME/Dropbox/dotfiles/profile        $HOME/.profile
ln  -sF  $HOME/Dropbox/dotfiles/gitconfig      $HOME/.gitconfig
ln  -sF  $HOME/Dropbox/dotfiles/git_template   $HOME/.git_template
ln  -sF  $HOME/Dropbox/dotfiles/tmate.conf     $HOME/.tmate.conf
ln  -sF  $HOME/Dropbox/dotfiles/tmux.conf      $HOME/.tmux.conf
ln  -sF  $HOME/Dropbox/dotfiles/tmux_scripts   $HOME/.tmux_scripts
ln  -sF  $HOME/Dropbox/dotfiles/gemrc          $HOME/.gemrc
ln  -sF  $HOME/Dropbox/dotfiles/Rprofile       $HOME/.Rprofile
ln  -sF  $HOME/Dropbox/dotfiles/todo.cfg       $HOME/.todo.cfg
ln  -sF  $HOME/Dropbox/dotfiles/assign_env.sh  $HOME/.assign_env.sh
ln  -sFh $HOME/Dropbox/dotfiles/ssh            $HOME/.ssh

# set permissions
# http://iknow.me/snippets/new-machine-with-dropbox-ssh-and-profile
chmod 700 $HOME/.ssh
chmod 644 $HOME/.ssh/*
chmod 600 $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa_lesscoding
chmod 600 $HOME/.ssh/id_rsa_linode_lesscoding
chmod 400 $HOME/.ssh/*.pem

