#!/usr/bin/env bash

action "Cleaning and Preparing Dock Applications"


dockutil --remove all --no-restart
dockutil --add /Applications/Launchpad.app --no-restart
#dockutil --add '' --type spacer --section apps --after Launchpad --no-restart
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/Safari.app --no-restart
#dockutil --add '' --type spacer --section apps --after Safari --no-restart
dockutil --add /Applications/Mail.app --no-restart
dockutil --add /Applications/Calendar.app --no-restart
dockutil --add /Applications/Notes.app --no-restart
#dockutil --add '' --type spacer --section apps --after Notes --no-restart
dockutil --add /Applications/Slack.app --no-restart
dockutil --add /Applications/Messages.app --no-restart
dockutil --add /Applications/Skype.app --no-restart
#dockutil --add '' --type spacer --section apps --after Skype --no-restart
dockutil --add /Applications/TextMate.app --no-restart
dockutil --add /Applications/iTerm.app --no-restart
dockutil --add '' --type spacer --section apps --after iTerm --no-restart
dockutil --add '~/Google Drive' --view fan --display stack --sort dateadded --no-restart
dockutil --add '~/Downloads' --view fan --display stack --sort dateadded

