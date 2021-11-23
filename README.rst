Setup macOS (Big Sur)
=====================

**In just a few easy steps!**

(Kidding… never easy enough, but not too bad either.)

Homebrew
--------

First, install Homebrew. `Homebrew <https://brew.sh>`_ is "The Missing Package Manager for macOS (or Linux)". With it, you can easily install a seemingly endless amount of useful software with it (now with bash installer!)

::

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Oh My Zsh
---------

Second, install Oh My Zsh. "Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration." 

::

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Python
------

Third, install Python with `dotfiles <https://pypi.org/project/dotfiles/>`_ and `checkoutmanager <https://pypi.org/project/checkoutmanager/>`_ to get dotfiles and other repositories from GitHub.

::

    brew install python@3.9
    /usr/local/opt/python@3.9/bin/pip3 install dotfiles checkoutmanager

**Just a few more steps!**

(Hang in here… some of these apply to me only so you can skip.)

Dotfiles
--------

Requires personal access token via `GitHub → Settings → Developer settings → Personal access tokens <https://github.com/settings/tokens>`_. Also requires login to `Safari → https://lastpass.com <https://lastpass.com>`_ for GitHub credentials.

::

    git clone https://aclark4life@github.com/aclark4life/dotfiles.git Dotfiles
    dotfiles -sf
    rm ~/.git
    chmod 600 ~/.ssh/*
    cd ~/Dotfiles
    git remote remove origin
    git remote add origin git@github.com:aclark4life/dotfiles.git
    git push --set-upstream origin main


GitHub
------

After dotfiles, `up` alias available from (my private) `~/Dotfiles/zshrc`. `up` aliased to: 

::

    pushd ~/Dotfiles
    git pull
    git commit -a -m 'Update'
    git push
    popd
    checkoutmanager co
    checkoutmanager up
    checkoutmanager missing

Run `up`:

::

    up

Everything Else
---------------

After the GitHub step, my ``~/Developer`` directory contains many repositories including this one. `make install` targetlooks like this: `install: defaults pip-install homebrew`

The homebrew target includes casks and casks include pcloud thanks to `this <https://github.com/tomgross/homebrew-pcloud>`_.

::

    cd ~/Developer/setup/
    make install


Manual steps
~~~~~~~~~~~~

Now we get into whatever is left after automation. Ideally these could be done with `defaults write` but have not been yet.

System Preferences
++++++++++++++++++

- Accessibility → Zoom → ☑︎ Use scroll gesture with modifier keys to zoom: ^Control
- Dock → ☐ Show recent applications in Dock
- Battery → [Never] Turn display off after
- Battery → ☐ Slightly dim the display when on battery power
- Power Adapter → [Never] Turn display off after
- Power Adapter → ☐ Enable Power Nap while on battery power
- Keyboard → ☑︎ Show keyboard and emoji viewers in menu bar
- Shortcuts → Mission Control → ☑︎ Move left a space [⌘←]
- Shortcuts → Mission Control → ☑︎ Move right a space [⌘→]
- Mission Control → Keyboard and Mouse Shortcuts → Mission Control → Middle Mouse Button
- Mission Control → ☐ Displays have separate spaces
- Security & Privacy → General → A login password has been set for this user → ☐ Require password ________ after sleep or screen saver begins
- Trackpad → More Gestures → ☐ Swipe between pages
- Users & Groups → Alex Clark → Login Items → + pCloud Drive
- Users & Groups → Alex Clark → Login Items → + Jumpcut
- Users & Groups → Login Options → Automatic Login → Alex Clark

Terminal Preferences
++++++++++++++++++++

General
'''''''

- New tabs open with:

  - [Default Working Directory]

Profiles → Text
'''''''''''''''
- ⌘ ++++++++
- Terminal → Shell → Use Settings as Default

Profiles → Window
'''''''''''''''''

- 80x24 → 120x36
- Terminal → Shell → Use Settings as Default

Profiles → Shell
''''''''''''''''

- Terminal → Preferences → Profile → Default → Shell → [Close the window] When the shell exits
- Terminal → Preferences → Profile → Default → Shell → [Never] Ask before closing

Profiles → Advanced
'''''''''''''''''''

- Terminal → Preferences → Profile → Default → Advanced → Bell → ☐ Audible bell 
- Terminal → Preferences → Profile → Default → Advanced → Bell → ☐ Visual bell 
- Terminal → Preferences → Profile → Default → Advanced → Bell → ☐ Badge app and window Dock 
- Terminal → Preferences → Profile → Default → Advanced → Bell → ☐ Bounce app icon when in background 

Install Edge Extensions
+++++++++++++++++++++++

- `LastPass <https://microsoftedge.microsoft.com/addons/detail/lastpass-free-password-m/bbcinlkgjjkejfdpemiealijmmooekmp?source=sfw>`_
