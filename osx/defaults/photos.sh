#!/usr/bin/env bash

action "Setting Photos Settings"

running "Prevent Photos from opening automatically when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true