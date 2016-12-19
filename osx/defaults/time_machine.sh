#!/usr/bin/env bash

action "Setting TimeMachine Settings"

running "Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

running "Disable local Time Machine backups"
hash tmutil &> /dev/null && sudo tmutil disablelocal

running "Disable local Time Machine snapshots"
sudo tmutil disablelocal