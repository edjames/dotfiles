Dotfiles
========

Config files for setting up an Ubuntu machine just right.

Preparation
-----------
Although you will be prompted to overwrite any existing dotfiles during instalation, it's still a good idea to backup any of your existing dotfiles should you wish to undo anything.

    cp ~/.bash_profile ~/Desktop
    cp ~/.bashrc ~/Desktop

Do the same for any other files you want to backup.

To keep any custom or personal bash settings, see the `Customization` section below.

Installation
------------
    cd ~
    git clone git://github.com/edjames/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

You will be prompted before any existing files are overwritten. Symlinks are created for each dotfile in this project.

Updating
--------
    cd ~/.dotfiles
    git pull
    reload

Features
--------
I normally place all of my coding projects in ~/Development, so this directory can easily be accessed (and tab completed) with the `d` command.

    d some_proje<tab>

There is also an `h` command which behaves similar, but acts on the 
home path.

    h doc<tab>

If you're using git, you'll notice the current branch name shows up in
the prompt while in a git repository. There are also some handy git aliases in the ~/.gitconfig file.

If you're using Rails, you'll find some handy aliases (below). You can 
also use show_log and hide_log in script/console to show the log inline.
  
    b        # bundle
    be       # bundle exec
    r        # rails
    rst      # touch tmp/restart.txt
    ld       # tail -f log/development.log

See the other aliases in ~/.aliases

There are several features enabled in Ruby's irb including history and 
completion. See irbrc and railsrc files for details.

Customization
-------------
It is possible to customize your bash environment even further by putting things in one of the following two files:

    ${HOME}/.before_dotfiles
    ${HOME}/.after_dotfiles

As their respective names indicate, these files are executed **before** and **after** the actual `dotfiles` files are executed.

These two files are **not** under git control, so are truly personal.

Contributing to dotfiles
------------------------
If you want to contribute:

* Check out the latest master to make sure the feature hasn’t been implemented or the bug hasn’t been fixed yet
* Check out the issue tracker to make sure someone already hasn’t requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don’t break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history.

Credits
-------
* [Peter Vandenberk (pvdb)](https://github.com/pvdb) and his (unfortunately private) sbrc project.
* [Ryan Bates (ryanb)](https://github.com/ryanb) of RailsCasts fame, and his own (dotfiles)[https://github.com/ryanb/dotfiles] project.

Copyright
---------

Copyright (c) 2011 Ed James. See LICENSE for details.