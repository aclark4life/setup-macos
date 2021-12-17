Setup macOS
===========

In just a few easy steps! Kidding. Never easy enough, but not too bad either.

Homebrew
--------

First, install `Homebrew <https://brew.sh>`_. 

::

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Oh My Zsh
---------

Second, install `Oh My ZSH <https://ohmyz.sh/>`_.

::

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Python + pipx
-------------

Third, install `Python <https://www.python.org/>`_ via `pipx <https://pypa.github.io/pipx/>`_.

::

    brew install pipx

Everything Else
---------------

Just a few more steps! Hang in there.

Firefox + LastPass
~~~~~~~~~~~~~~~~~~

Install `Firefox <https://mozilla.org>`_  then install the `LastPass Password Manager Add-On <https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/>`_.

::

    brew install --cask firefox

Dotfiles
~~~~~~~~

Requires `dotfiles <https://pypi.org/project/dotfiles/>`_ and GitHub Personal access token from `GitHub → Settings → Developer settings → Personal access tokens <https://github.com/settings/tokens>`_.

::

    pipx install dotfiles
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/aclark4life/setup/main/dotfiles.sh)"


Developer
~~~~~~~~~~~~~~~~~~~

Installs repositories defined in `.checkoutmanager.cfg <https://github.com/reinout/checkoutmanager/blob/master/checkoutmanager/sample.cfg>`_ via `up` alias.


.. image:: screenshot.png


::

    pipx install checkoutmanager
    up


System Preferences
~~~~~~~~~~~~~~~~~~

Accessibility
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Accessibility → Zoom → ☑︎ Use scroll gesture with modifier keys to zoom: ^Control

Battery
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Battery → [Never] Turn display off after
- Battery → ☐ Slightly dim the display when on battery power

Displays
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Displays → Display → ☐ Automatically adjust brightness (hell no!)

Dock
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Dock → ☐ Show recent applications in Dock

Keyboard
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Keyboard → Input Sources → ☑︎ Show input menu in menu bar
- Keyboard → Shortcuts → Mission Control → ☑︎ Move left a space [⌘←]
- Keyboard → Shortcuts → Mission Control → ☑︎ Move right a space [⌘→]

Mission Control
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Mission Control → Keyboard and Mouse Shortcuts → Mission Control → Middle Mouse Button
- Mission Control → ☐ Displays have separate spaces

Power Adapter
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Power Adapter → [Never] Turn display off after
- Power Adapter → ☐ Enable Power Nap while on battery power

Security & Privacy
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Security & Privacy → General → A login password has been set for this user → ☐ Require password → after sleep or screen saver begins

Trackpad
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Trackpad → More Gestures → ☐ Swipe between pages

Users & Groups
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
- Users & Groups → Alex Clark → Login Items → + pCloud Drive
- Users & Groups → Alex Clark → Login Items → + Jumpcut
- Users & Groups → Login Options → Automatic Login → Alex Clark

Terminal → Preferences…
~~~~~~~~~~~~~~~~~~~~~~~

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
