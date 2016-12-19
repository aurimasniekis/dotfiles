#!/usr/bin/env bash


action "Setting Terminal Settings"

running "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4
