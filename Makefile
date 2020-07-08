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

# XXX Move to Brewfile
brew-install:
	brew install \
		automake \
		awscli \
		bash \
		cbmbasic \
		certbot \
		composer \
		coreutils \
		dcmtk \
		gcal \
		gdb \
		git \
		git-lfs \
		homebrew/cask-versions/adoptopenjdk8 \
		htop \
		hub \
		imagemagick \
		imake \
		jack \
		jsonpp \
		lastpass-cli \
		libdvdcss \
		libjpeg \
		libmagic \
		libmemcached \
		libtiff \
		mobile-shell \
		openconnect \
		openmotif \
		p7zip \
		pandoc \
		pkg-config \
		pulseaudio \
		python \
		python3 \
		redis \
		ruby \
		rpl \
		telnet \
		tree \
		wget \
		webpack \

# XXX Move to Brewfile
brew-cask-install:
	brew cask install \
		cord \
		dia \
		diskmaker-x \
		dosbox \
		firefox \
		github \
		google-chrome \
		google-earth-pro \
		google-hangouts \
		google-photos-backup-and-sync \
		handbrake \
		java \
		jumpcut \
		keka \
		macvim \
		mame \
		microsoft-edge \
		microsoft-teams \
		opensc \
		nomachine \
		nvalt \
		paintbrush \
		silverlight \
		skype \
		slack \
		steam \
		stella \
		storyboarder \
		sublime-text \
		tcl \
		thunderbird \
		universal-media-server \
		vagrant \
		virtualbox \
		virtualc64

brew-bundle:
	brew bundle

defaults-write: defaults-clock defaults-dock defaults-finder defaults-jumpcut defaults-screencapture

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

defaults-dock:
	defaults delete com.apple.dock
	killall Dock
	defaults write com.apple.dock show-recents -bool FALSE
	dockutil --add "/Applications/Google Chrome.app"
	dockutil --add /System/Applications/Utilities/Terminal.app
	dockutil --add /Applications/Microsoft\ Outlook.app
	dockutil --add /Applications/Cisco/Cisco\ AnyConnect\ Secure\ Mobility\ Client.app
	dockutil --remove 'Keynote'
	dockutil --remove 'Numbers'
	dockutil --remove 'Pages'

defaults-screencapture:
	# defaults write com.apple.screencapture location /Users/alexclark/pCloud\ Drive/Screenshots

start-services:
	brew services start mysql
	brew services start postgresql
	sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

pip-install:
	/usr/local/opt/python@3.8/bin/pip3 install -r requirements.txt
