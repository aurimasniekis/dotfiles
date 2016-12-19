#!/usr/bin/env bash

action "Setting Calendar Settings"

running "Show week numbers (10.8 only)"
defaults write com.apple.iCal "Show Week Numbers" -bool true

running "Show 7 days"
defaults write com.apple.iCal "n days of week" -int 7

running "Week starts on monday"
defaults write com.apple.iCal "first day of week" -int 1
defaults write NSGlobalDomain AppleFirstWeekday -dict 'gregorian' 2

running "Show event times"
defaults write com.apple.iCal "Show time in Month View" -bool true