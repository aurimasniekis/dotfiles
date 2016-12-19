#!/usr/bin/env bash

action "Setting Google Chrome Settings"

running "Disable Swipe controls for Google Chrome"
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE