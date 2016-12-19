#!/usr/bin/env bash


action "Setting Screen Settings"

running "Hot corners"
# Possible values:
#   0: no-op
#   2: Mission Control
#   3: Show application windows
#   4: Desktop
#   5: Start screen saver
#   6: Disable screen saver
#   7: Dashboard
#  10: Put display to sleep
#  11: Launchpad
#  12: Notification Center
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 0

running "Require password immediately after sleep or screen saver."
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

running "Save screenshots to desktop and disable the horrific drop-shadow."
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

running "Enable sub-pixel rendering on non-Apple LCDs."
defaults write NSGlobalDomain AppleFontSmoothing -int 2

running "Enable DarkMode"
defaults write NSGlobalDomain AppleInterfaceStyle Dark

running "Disable and kill Dashboard"
# Can be reverted with:
# defaults write com.apple.dashboard mcx-disabled -boolean NO; killall Doc
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

running "Disable icons on the Desktop"
# This will "hide" all the files on the Desktop, but one can still access
# the files through Finder. Makes things look pretty.
defaults write com.apple.finder CreateDesktop -bool false && killall Finder
