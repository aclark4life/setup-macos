Setup macOS (Catalina)
======================

**In just a few easy steps! (Kidding… never easy enough, but not too bad either.)**

First, install Homebrew. `Homebrew <https://brew.sh>`_ is "The Missing Package Manager for macOS (or Linux)". With it, you can easily install a seemingly endless amount of useful softwares with it.

Homebrew
--------

::

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Second, install Python 3 with dotfiles and checkoutmanager to get dotfiles and other repositories from GitHub.


Python
------

::

    brew install python3
    pip3 install dotfiles checkoutmanager

Third, install Oh My Zsh. "Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration." 

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


GitHub
------

After dotfiles, "up" alias is available (up: aliased to pushd ~/Dotfiles; git pull; git commit -a -m 'Update'; git push; popd; checkoutmanager co; checkoutmanager up; checkoutmanager missing).

::

    up


More Python and Homebrew
------------------------

(*Via requirements.txt and Brewfile!*)

After GitHub, ~/Developer contains many repositories, including this one.

::

    cd ~/Developer/setup/
    make install

Manual steps
------------

Install applications
~~~~~~~~~~~~~~~~~~~~

- Install `pCloud <https://www.pcloud.com/how-to-install-pcloud-drive-mac-os.html?download=mac>`_

Modify System Preferences
~~~~~~~~~~~~~~~~~~~~~~~~~

- Dock -> [ ] Show recent applications in Dock
- Keyboard -> Shortcuts -> Mission Control -> Move left a space -> cmd<-
- Keyboard -> Shortcuts -> Mission Control -> Move right a space -> cmd->
- Mission Control -> Keyboard and Mouse Shortcuts -> Mission Control -> Middle Mouse Button
- Trackpad -> More Gestures -> [ ] Swipe between pages
- Users & Groups -> Alex Clark -> Login Items -> + pCloud Drive
- Users & Groups -> Alex Clark -> Login Items -> + Jumpcut
- Users & Groups -> Login Options -> Automatic Login -> Alex Clark

Modify Terminal settings
~~~~~~~~~~~~~~~~~~~~~~~~

- Terminal -> Preferences -> Profile -> Default -> Text -> Droid Sans Mono for Powerline 15pt
- Terminal -> Preferences -> Profile -> Default -> Shell -> When the shell exits: [Close the window]
- Terminal -> Preferences -> Profile -> Default -> Shell -> Ask before closing: [Never]
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Audible bell [ ]
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Visual bell [ ]
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Badge app and window Dock [ ]
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Bounce app icon when in background [ ]
- Terminal -> Preferences -> Profile -> Default -> Cursor -> Cursor -> [Black]
- Terminal -> Shell -> Use Settings as Default

Install Chrome extensions
~~~~~~~~~~~~~~~~~~~~~~~~~

- Install LastPass browser extension
- Install ColorZilla browser extension
- Install MeasureIt browser extension
