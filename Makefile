# https://github.com/aclark4life/project-makefile
#
# The MIT License (MIT)
#
# Copyright (c) 2016–2020 Alex Clark
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

include base.mk

#-------------------------------------------------------------------------------
#
# Custom Overrides
#
# https://stackoverflow.com/a/49804748

#PROJECT = project
#APP = app
.DEFAULT_GOAL=commit-push
install: pip-install brew-bundle defaults-write start-services
#serve: django-serve
#virtualenv: python-virtualenv-3-7

brew-bundle:
	# Install Brewfile brews
	brew bundle

defaults-write: defaults-clock defaults-finder defaults-jumpcut defaults-screencapture

defaults-jumpcut:
	defaults write net.sf.Jumpcut displayNum 99
	defaults write net.sf.Jumpcut rememberNum 99
	defaults write net.sf.Jumpcut loadOnStartup 1
	defaults write net.sf.Jumpcut SUCheckAtStartup 1

defaults-finder:
	# New Finder Window opens HOME
	defaults write com.apple.finder NewWindowTarget "PfHm"
	defaults write com.apple.finder NewWindowTargetPath "file:///${HOME}/"

defaults-clock:
	# Show date on clock
	defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h:mm a"


# dockutil --add "/Applications/Google Chrome.app"
# Traceback (most recent call last):
#   File "/usr/local/bin/dockutil", line 669, in <module>
#     main()
#   File "/usr/local/bin/dockutil", line 370, in main
#     if addItem(pl, real_add_path, replace_label, position, before_item, after_item, section, displayas, showas, arrangement, tile_type, label_name):
#   File "/usr/local/bin/dockutil", line 545, in addItem
#     for existing_dock_item in (pl[section]):
# KeyError: 'persistent-apps'
# make: *** [defaults-dock] Error 1
defaults-dock:
	defaults delete com.apple.dock
	killall Dock
	defaults write com.apple.dock show-recents -bool FALSE
	dockutil --add "/Applications/Google Chrome.app"
	dockutil --add "/System/Applications/Utilities/Terminal.app"
	dockutil --add "/Applications/Microsoft Outlook.app"
	dockutil --add "/Applications/Cisco/Cisco AnyConnect Secure Mobility Client.app"
	dockutil --add "/Applications/MIDIrouter.app"
	dockutil --remove 'Keynote'
	dockutil --remove 'Numbers'
	dockutil --remove 'Pages'
	defaults write com.apple.systempreferences AttentionPrefBundleIDs 0
	killall Dock

defaults-screencapture:
	defaults write com.apple.screencapture location /Users/alexclark/pCloud\ Drive/Screenshots

start-services:
#	brew services start mysql
	brew services start postgresql
	sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

brew-install-cask-pcloud:
	brew install --cask tomgross/pcloud/pcloud

edit:
	vi README.rst

.PHONY: e
e: edit
