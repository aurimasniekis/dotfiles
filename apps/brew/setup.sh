#!/usr/bin/env bash

action "Setuping HomeBrew"

bot "Installing Homebrew scheduled updater"
if ! launchctl list | grep "com.aniekis.homebrew.update" &> /dev/null ; then
    [[ -d ~/Library/LaunchAgents ]] || mkdir mkdir ~/Library/LaunchAgents

    if [ ! -f ~/Library/LaunchAgents/com.aniekis.homebrew.update.plist ]; then
        cp ./apps/brew/com.aniekis.homebrew.update.plist ~/Library/LaunchAgents/com.aniekis.homebrew.update.plist
    fi

    launchctl load ~/Library/LaunchAgents/com.aniekis.homebrew.update.plist
fi

running "Adding GitHub token"
