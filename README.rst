Setup macOS (Catalina)
======================

**In just a few easy steps! (Kidding… never easy enough, but not too bad either.)**

Homebrew
--------

First, install Homebrew. `Homebrew <https://brew.sh>`_ is "The Missing Package Manager for macOS (or Linux)". With it, you can easily install a seemingly endless amount of useful softwares with it.

::

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

Python
------

Second, install Python 3 with dotfiles and checkoutmanager to get dotfiles and other repositories from GitHub.

::

    brew install python3
    pip3 install dotfiles checkoutmanager

Oh My Zsh
---------

Third, install Oh My Zsh. "Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration." 

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

After dotfiles, "up" alias is available (``up: aliased to pushd ~/Dotfiles; git pull; git commit -a -m 'Update'; git push; popd; checkoutmanager co; checkoutmanager up; checkoutmanager missing``).

::

    up


Everything else
---------------

After GitHub, ~/Developer contains many repositories, including this one.

::

    cd ~/Developer/setup/
    make install

.. image:: screenshot.png
    :align: center

Manual steps
------------

Install applications
~~~~~~~~~~~~~~~~~~~~

*No Homebrew Cask for these*

- `Audacity <https://www.audacityteam.org/download/mac/>`_
- `pCloud <https://www.pcloud.com/how-to-install-pcloud-drive-mac-os.html?download=mac>`_
- Cisco AnyConnect Secure Mobility Client

Modify System Preferences
~~~~~~~~~~~~~~~~~~~~~~~~~

- Accessibility -> Zoom -> [*] Use scroll gesture with modifier keys to zoom: ^Control
- Dock -> [] Show recent applications in Dock
- Mission Control -> Keyboard and Mouse Shortcuts -> Mission Control -> Middle Mouse Button
- Security & Privacy -> General -> A login password has been set for this user -> [] Require password
- Trackpad -> More Gestures -> [] Swipe between pages
- Users & Groups -> Alex Clark -> Login Items -> + pCloud Drive
- Users & Groups -> Alex Clark -> Login Items -> + Jumpcut
- Users & Groups -> Login Options -> Automatic Login -> Alex Clark

Modify Terminal settings
~~~~~~~~~~~~~~~~~~~~~~~~

- Terminal -> Preferences -> Profile -> Default -> Shell -> When the shell exits: [Close the window]
- Terminal -> Preferences -> Profile -> Default -> Shell -> Ask before closing: [Never]
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Audible bell []
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Visual bell []
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Badge app and window Dock []
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> Bounce app icon when in background []
- Terminal -> Shell -> Use Settings as Default

Install Chrome extensions
~~~~~~~~~~~~~~~~~~~~~~~~~

- `ColorZilla <https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en>`_
- `Corporate Ipsum <https://chrome.google.com/webstore/detail/corporate-ipsum/lfmadckmfehehmdnmhaebniooenedcbb?hl=en>`_
- `LastPass <https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US>`_
- `MeasureIt <https://chrome.google.com/webstore/detail/measure-it/jocbgkoackihphodedlefohapackjmna?hl=en>`_
