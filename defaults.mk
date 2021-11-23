install: defaults-clock defaults-finder defaults-jumpcut defaults-screencapture

defaults-jumpcut:
	# Jumpcut
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
	# Dock
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
	# Screenshots
	defaults write com.apple.screencapture location /Users/alexclark/pCloud\ Drive/Screenshots
