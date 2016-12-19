#!/usr/bin/env bash

bot "Installing Wallpaper changing agent"

if ! launchctl list | grep "com.aniekis.wallpaper" &> /dev/null ; then
    [[ -d ~/Library/LaunchAgents ]] || mkdir mkdir ~/Library/LaunchAgents

    if [ ! -f ~/Library/LaunchAgents/com.aniekis.wallpaper.plist ]; then
        cp ./apps/wallpaper/com.aniekis.wallpaper.plist ~/Library/LaunchAgents/com.aniekis.wallpaper.plist
    fi

    launchctl load ~/Library/LaunchAgents/com.aniekis.wallpaper.plist
fi