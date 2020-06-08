Setup macOS
===========

Homebrew
--------

::

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


Python
------

::

    brew install python3
    pip3 install dotfiles checkoutmanager


Oh My Zsh
---------

::

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


Dotfiles
--------

Requires token via GitHub -> Settings -> Developer settings -> Personal access tokens

::

    git clone https://github.com/aclark4life/dotfiles.git Dotfiles
    dotfiles -sf
    rm ~/.git
    chmod 600 ~/.ssh/*
    cd ~/Dotfiles
    git remote remove origin
    git remote add origin git@github.com:aclark4life/dotfiles.git
    git push --set-upstream origin master



::

    make setup
