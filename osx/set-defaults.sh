#!/usr/bin/env bash

sudo -v

killall 'System Preferences' &> /dev/null

for file in ./osx/defaults/*.sh; do
    source $file
done

###############################################################################
# Do some clean up work.
###############################################################################

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
           "Dock" "Finder" "Mail" "Messages" "Safari" "SystemUIServer" \
           "Terminal" "Twitter" "iCal" "SizeUp"; do
           kill all "${app}" > /dev/null 2>&1
done