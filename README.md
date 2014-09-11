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

Install with this command:

    $ git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    $ exec $SHELL -l

### Ruby-build

* <https://github.com/sstephenson/ruby-build>

Install with this command:

    $ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    $ rbenv install 1.9.3-p327
    $ rbenv rehash
    $ rbenv global 1.9.3-p327

### Brew

* <http://mxcl.github.com/homebrew/>

Install with this command:

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

Also install Tmux plugins:

* <https://github.com/tmux-plugins/tpm>

Add the plugins to the bottom of your `.tmux.conf` file then remember to install with:

    prefix + I


#### Tmux Resurrect:

* <https://github.com/tmux-plugins/tmux-resurrect>

Key bindings

    prefix + Ctrl-s or prefix + Alt-s - save
    prefix + Ctrl-r or prefix + Alt-r - restore

#### Tmux-Yank:

* <https://github.com/tmux-plugins/tmux-yank>

Key bindings

    prefix + y - copies text from the command line to clipboard.

Copy mode bindings:

    y - copy selection to system clipboard
    Ctrl-y - "put" selection - equivalent to copying a selection, and pasting it to the command line
    Alt-y - performs both of the above: copy to system clipboard and put to command line

#### Tmux-Copycat

* <https://github.com/tmux-plugins/tmux-copycat>

Search

    prefix + / - regex search (strings work too)

Example search entries:

    foo - searches for string foo
    [0-9]\\+ - regex search for numbers (notice + is escaped with 2 x \)

Grep is used for searching.
Escape regex characters with 2 backslashes.
Searches are case insensitive.
Predefined searches

    prefix + ctrl-f - simple *f*ile search
    prefix + ctrl-g - jumping over *g*it status files (best used after git status command)
    prefix + ctrl-u - *u*rl search
    prefix + ctrl-d - number search (mnemonic d, as digit)
    prefix + ctrl-r - "*r*ails server" request search

These start "copycat mode" and jump to first match.
"Copycat mode" bindings

These are enabled when you search with copycat:

    n - jumps to the next match
    N - jumps to the previous match

To copy a highlighted match:

    Enter - if you're using Tmux vi mode

