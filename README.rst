Setup macOS
===========

**In just a few easy steps!**

Kidding… never easy enough, but not too bad either.

Homebrew
--------

`Homebrew <https://brew.sh>`_ is "The Missing Package Manager for macOS (or Linux)".

::

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Oh My Zsh
---------

"Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration."

::

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Python
------

Third, install Python with `dotfiles <https://pypi.org/project/dotfiles/>`_ and `checkoutmanager <https://pypi.org/project/checkoutmanager/>`_ to get dotfiles and other repositories from GitHub.

::

    brew install python@3.9
    /usr/local/opt/python@3.9/bin/pip3 install dotfiles checkoutmanager

**Just a few more steps!**

(Hang in here… )

Dotfiles
--------

Requires personal access token via `GitHub → Settings → Developer settings → Personal access tokens <https://github.com/settings/tokens>`_. Also requires login to `Safari → https://lastpass.com <https://lastpass.com>`_ for GitHub credentials.

::

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/aclark4life/setup/main/dotfiles.sh)"


GitHub
------

After dotfiles, ``up`` alias available from my `~/Dotfiles/zshrc`.

::

    up

Everything Else
---------------

::

    cd ~/Developer/setup/
    make install

Manual steps
~~~~~~~~~~~~

System Preferences
++++++++++++++++++

- Accessibility → Zoom → ☑︎ Use scroll gesture with modifier keys to zoom: ^Control
- Battery → [Never] Turn display off after
- Battery → ☐ Slightly dim the display when on battery power
- Displays → Display → ☐ Automatically adjust brightness (hell no!)
- Dock → ☐ Show recent applications in Dock
- Keyboard → Input Sources → ☑︎ Show input menu in menu bar
- Keyboard → Shortcuts → Mission Control → ☑︎ Move left a space [⌘←]
- Keyboard → Shortcuts → Mission Control → ☑︎ Move right a space [⌘→]
- Mission Control → Keyboard and Mouse Shortcuts → Mission Control → Middle Mouse Button
- Mission Control → ☐ Displays have separate spaces
- Power Adapter → [Never] Turn display off after
- Power Adapter → ☐ Enable Power Nap while on battery power
- Security & Privacy → General → A login password has been set for this user → ☐ Require password → after sleep or screen saver begins
- Trackpad → More Gestures → ☐ Swipe between pages
- Users & Groups → Alex Clark → Login Items → + pCloud Drive
- Users & Groups → Alex Clark → Login Items → + Jumpcut
- Users & Groups → Login Options → Automatic Login → Alex Clark

Terminal Preferences
++++++++++++++++++++

General
'''''''

- New tabs open with: [Default Working Directory]

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
