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
#install: pip-install brew-bundle setup
install: brew-bundle setup
#serve: django-serve
#virtualenv: python-virtualenv-3-7

brew-bundle:
	brew bundle

setup: defaults-finder defaults-jumpcut defaults-clock

defaults-jumpcut:
	defaults write net.sf.Jumpcut displayNum 99
	defaults write net.sf.Jumpcut rememberNum 99
	defaults write net.sf.Jumpcut loadOnStartup 1
	defaults write net.sf.Jumpcut SUCheckAtStartup 1
	# defaults write net.sf.Jumpcut stickyBezel 1
	# defaults write net.sf.Jumpcut wraparoundBezel 1
	# defaults write net.sf.Jumpcut "ShortcutRecorder mainHotkey" -dict keyCode 9 modifierFlags 1179648

defaults-finder:
	# New Finder Window opens HOME
	defaults write com.apple.finder NewWindowTarget "PfHm"
	defaults write com.apple.finder NewWindowTargetPath "file:///${HOME}/"

defaults-clock:
	# Show date on clock
	defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h:mm a"

brew-install-optional:
	brew install \
		automake \
		awscli \
		bash \
		cbmbasic \
		certbot \
		clang-format \
		composer \
		coreutils \
		dcmtk \
		dockutil \
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

brew-cask-optional:
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
		virtualc64 \
		vlc \
		xquartz
