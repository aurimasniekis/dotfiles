#!/usr/bin/env bash

action "Setting Finder Settings"


running "New windows open in home directory"
defaults write com.apple.finder NewWindowTarget -string "PfHm"

running "Show hidden files"
defaults write com.apple.finder AppleShowAllFiles -bool true

running "Show Status Bar and Path Bar"
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

running "Search in current directory by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

running "Empty Trash securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true

running "Show the ~/Library folder."
chflags nohidden ~/Library

running "Set the Finder prefs for showing a few different volumes on the Desktop."
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

running "Always open everything in Finder's column view. This is important."
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

running "Show hidden files and file extensions by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

running "Disable the warning when changing file extensions"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

running "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

running "Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

running "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

running "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

running "Avoid creating .DS_Store files on USB volumes"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

running "Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

running "Expand the following File Info panes: “General”, “Open with”, and “Sharing & Permissions”"
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true


running "Keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true