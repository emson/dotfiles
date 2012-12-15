
ln  -sF  $HOME/Dropbox/dotfiles/.bash_profile   $HOME/.bash_profile
ln  -sF  $HOME/Dropbox/dotfiles/.gitconfig      $HOME/.gitconfig
ln  -sF  $HOME/Dropbox/dotfiles/.tmux.conf      $HOME/.tmux.conf
ln  -sF  $HOME/Dropbox/dotfiles/.ssh            $HOME/.ssh

# set permissions
# http://iknow.me/snippets/new-machine-with-dropbox-ssh-and-profile
chmod 700 $HOME/.ssh
chmod 644 $HOME/.ssh/*
chmod 600 $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa_lesscoding
chmod 600 $HOME/.ssh/id_rsa_linode_lesscoding

