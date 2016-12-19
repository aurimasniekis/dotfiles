#!/usr/bin/env bash

action "Setting Transmission Settings"

running "Use ~/Torrents to store incomplete downloads"
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Torrents"

running "Dont prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

running "Trash original torrent files"
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

running "Hide the donate message"
defaults write org.m0k.transmission WarningDonate -bool false
running "Hide the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

running "IP block list."
running "Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/"
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true