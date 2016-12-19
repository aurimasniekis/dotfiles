#!/usr/bin/env bash


action "Setting Input Settings"

running "Map bottom right corner of Apple trackpad to right-click."
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write -g com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write com.apple.trackpad.enableSecondaryClick -bool true

running "Set a really fast keyboard repeat rate."
defaults write -g KeyRepeat -int 0

running "Set a shorter keyboard repeat rate."
defaults write -g InitialKeyRepeat -int 10

running "Disable press-and-hold for keys in favor of key repeat."
defaults write -g ApplePressAndHoldEnabled -bool true

running "Set language and text formats. (USD and Imperial Units)"
defaults write -g AppleLanguages -array "en" "lt"
defaults write -g AppleLocale -string "en_US@currency=EUR"
defaults write -g AppleFirstWeekday -dict gregorian 2
defaults write -g AppleMeasurementUnits -string "Centimeters"
defaults write -g AppleMetricUnits -bool true

running "Set the timezone; see sudo systemsetup -listtimezones for other values"
sudo systemsetup -settimezone "Europe/Berlin" > /dev/null

running "Disable smart quotes as they’re annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

running "Disable smart dashes as they’re annoying when typing code"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

running "Enable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

running "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

running "Enable three finger tap (look up)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

running "Enable three finger drag"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

running "Disable “natural” (Lion-style) scrolling"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

running "Zoom in or out"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -bool true

running "Smart zoom, double-tap with two fingers"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -bool true

running "Rotate"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -bool true

running "Swipe between pages with two fingers"
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true

running "Swipe between full-screen apps with three fingers"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2

running "Show Notification Center"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 2
