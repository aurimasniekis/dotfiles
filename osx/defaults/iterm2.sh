#!/usr/bin/env bash

action "Setting iTerm2 Settings"

defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "/Users/$USER/.dotfiles/apps/iterm2/"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
defaults write com.googlecode.iterm2 "NoSyncNeverRemindPrefsChangesLostForFile_selection" -bool false