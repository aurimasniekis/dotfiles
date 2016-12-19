#!/usr/bin/env bash


action "Setting SizeUp Settings"

running "Start SizeUp at login"
defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true

running "Don’t show the preferences window on next start"
defaults write com.irradiatedsoftware.SizeUp ShowPrefsOnNextStart -bool false