#!/usr/bin/env bash

source ./include.sh


# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


bot "Welcome to dotFiles installation"

action "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && ok
else
  warn "already installed"
fi

running "Updating brew"
brew update && ok

running "Tapping brew bundle"
brew tap homebrew/bundle && ok

running "Brew bundle"
brew bundle && ok

bot "Setting System Defaults"
source ./osx/set-defaults.sh

bot "Setting Google Drive"
open /Applications/Google\ Drive.app
until [ -d ~/Google\ Drive/Mackup ]
do
    running "Waiting for ~/Google Drive to appear"
    sleep 10
done

bot "Installing Applications"
for file in ./apps/*/*.sh
do
    source $file
done