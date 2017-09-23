#!/usr/bin/env bash

sudo -v

# Enable lock screen after auto-login
# check if its already loaded, if not forces loading
if ! launchctl list | grep "com.aniekis.lockscreen" &> /dev/null ; then
  # create dir ... weird bug seen where this dir hasnt been created yet
  # Just to make sure I touch the file aswell
  mkdir ~/Library/LaunchAgents
#  cp ./osx/launch_agents/com.aniekis.lockscreen.plist ~/Library/LaunchAgents/com.aniekis.lockscreen.plist
  cp ~/.dotfiles/osx/launch_agents/com.aniekis.lockscreen.plist ~/Library/LaunchAgents/com.aniekis.lockscreen.plist

  # execute commands before script ends
  function finish {
    launchctl load ~/Library/LaunchAgents/com.aniekis.lockscreen.plist
  }
  trap finish EXIT
fi;