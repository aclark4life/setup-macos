Setup macOS (Catalina)
======================

**In just a few easy steps!**

(Kidding… never easy enough, but not too bad either.)

Homebrew
--------

First, install Homebrew. `Homebrew <https://brew.sh>`_ is "The Missing Package Manager for macOS (or Linux)". With it, you can easily install a seemingly endless amount of useful software with it (now with bash installer!)

::

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

Python
------

Second, install Python 3 with dotfiles and checkoutmanager to get dotfiles and other repositories from GitHub.

::

    brew install python@3.9
    /usr/local/opt/python@3.9/bin/pip3 install dotfiles checkoutmanager

Oh My Zsh
---------

Third, install Oh My Zsh. "Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration." 

::

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Dotfiles
--------

Requires token via GitHub -> Settings -> Developer settings -> Personal access tokens

::

    git clone https://aclark4life@github.com/aclark4life/dotfiles.git Dotfiles
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

Additional manual steps
-----------------------

Install applications
~~~~~~~~~~~~~~~~~~~~

*No Cask available*

- `pCloud <https://www.pcloud.com/how-to-install-pcloud-drive-mac-os.html?download=mac>`_
- Cisco AnyConnect Secure Mobility Client

Install Chrome extensions
~~~~~~~~~~~~~~~~~~~~~~~~~

- `LastPass <https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US>`_
- `Corporate Ipsum <https://chrome.google.com/webstore/detail/corporate-ipsum/lfmadckmfehehmdnmhaebniooenedcbb?hl=en>`_
- `ColorZilla <https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en>`_
- `MeasureIt <https://chrome.google.com/webstore/detail/measure-it/jocbgkoackihphodedlefohapackjmna?hl=en>`_

Modify Chrome settings
~~~~~~~~~~~~~~~~~~~~~~

- Settings -> Autofill -> Passwords -> Offer to save passwords []
- Settings -> Autofill -> Passwords -> Auto Sign-in []
- Settings -> Autofill -> Payment methods -> Save and fill payment methods []
- Settings -> Autofill -> Payment methods -> Allow sites to check if you have payment methods saved []
- Settings -> Autofill -> Addresses and more -> Save and fill addresses []

Modify Outlook settings
~~~~~~~~~~~~~~~~~~~~~~~

- Outlook -> Organize -> Focused Inbox []

Modify System Preferences
~~~~~~~~~~~~~~~~~~~~~~~~~

Accessibility
+++++++++++++

- Accessibility -> Zoom -> [*] Use scroll gesture with modifier keys to zoom: ^Control

Dock
++++

- Dock -> [] Show recent applications in Dock

Energy Saver
++++++++++++

- Battery -> [] Put hard disks to sleep when possible
- Battery -> [] Slightly dim the display when on battery power
- Battery -> Turn display off after [Never]
- Power Adapter -> [] Put hard disks to sleep when possible
- Power Adapter -> [] Slightly dim the display when on battery power
- Power Adapter -> Turn display off after [Never]

Keyboard
++++++++

- Keyboard -> [*] Show keyboard and emoji viewers in menu bar
- Shortcuts -> Mission Control -> [*] Move left a space [CMD<-]
- Shortcuts -> Mission Control -> [*] Move right a space [CMD->]

Mission Control
+++++++++++++++

- Mission Control -> Keyboard and Mouse Shortcuts -> Mission Control -> Middle Mouse Button
- Mission Control -> [] Displays have separate spaces

Security & Privacy 
++++++++++++++++++

- Security & Privacy -> General -> A login password has been set for this user -> [] Require password ________ after sleep or screen saver begins

Trackpad
++++++++

- Trackpad -> More Gestures -> [] Swipe between pages

Users & Groups
++++++++++++++

- Users & Groups -> Alex Clark -> Login Items -> + pCloud Drive
- Users & Groups -> Alex Clark -> Login Items -> + Jumpcut
- Users & Groups -> Login Options -> Automatic Login -> Alex Clark

Modify Terminal Preferences
~~~~~~~~~~~~~~~~~~~~~~~~~~~

General
+++++++

- New tabs open with:

  - [Default Working Directory]

Profile
+++++++

Text
'''''

- CMD + + + + +
- Terminal -> Shell -> Use Settings as Default

Window
'''''''''

- 80x24 -> 120x36
- Terminal -> Shell -> Use Settings as Default

Shell
'''''

- Terminal -> Preferences -> Profile -> Default -> Shell -> When the shell exits: [Close the window]
- Terminal -> Preferences -> Profile -> Default -> Shell -> Ask before closing: [Never]

Advanced
'''''''''

- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> [] Audible bell 
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> [] Visual bell 
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> [] Badge app and window Dock 
- Terminal -> Preferences -> Profile -> Default -> Advanced -> Bell -> [] Bounce app icon when in background 
