defaults-write:
	# defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h:mm a"
	# defaults write com.apple.finder NewWindowTarget "PfHm"
	# defaults write com.apple.finder NewWindowTargetPath "file:///${HOME}/"
	# defaults write com.apple.screencapture location /Users/alexclark/pCloud\ Drive/Screenshots
	defaults write net.sf.Jumpcut displayNum 99
	defaults write net.sf.Jumpcut rememberNum 99
	defaults write net.sf.Jumpcut loadOnStartup 1
	defaults write net.sf.Jumpcut SUCheckAtStartup 1
brew-install:
	brew bundle install
