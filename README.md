# Manage Your Dotfiles

## Setup and linking

Clone this repository into the root of your Dropbox account.

		$ git clone git@github.com:emson/dotfiles.git ~/Dropbox/

Then open the terminal and navigate to your cloned `dotfiles` directory:

		$ cd ~/Dropbox/dotfiles
		$ assign_all.sh

NB If you already have a `~/.ssh/` directory you will have to manually move it.


## Other things to install

Just to remind myself of all the packages I usually need to install when
switching to a new machine.

### Rbenv

* <https://github.com/sstephenson/rbenv>

    $ git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    $ exec $SHELL -l

### Ruby-build

* <https://github.com/sstephenson/ruby-build>

    $ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    $ rbenv install 1.9.3-p327
    $ rbenv rehash
    $ rbenv global 1.9.3-p327

### Brew

* <http://mxcl.github.com/homebrew/>

    $ ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

### Ack

    $ brew install ack

### VimBen

* <https://github.com/emson/vimben> - see installation

### Iterm2

* <http://www.iterm2.com/#/section/home>

### Tmux

    $ brew install tmux
    // sometimes installing tmux has an error if so run this:
    $ brew unlink libevent && brew link libevent
    $ brew install reattach-to-user-namespace


