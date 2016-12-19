#!/usr/bin/env bash

action "Setting Dock Settings"

running "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock largesize -int 52
defaults write com.apple.dock tilesize  -int 12
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock mineffect suck

running "Add several spacers"
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'


#running "Adding Recent Apps Folder"
#defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
#defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'