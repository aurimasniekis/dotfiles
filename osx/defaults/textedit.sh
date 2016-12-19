#!/usr/bin/env bash

action "Setting TextEdit Settings"

running "Use plain text mode for new TextEdit documents"
defaults write com.apple.TextEdit RichText -int 0

running "Open and save files as UTF-8 in TextEdit"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4