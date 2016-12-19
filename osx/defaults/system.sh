#!/usr/bin/env bash


action "Setting System Settings"


running "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false


running "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

running "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

running "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

running "Disable Resume system-wide"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

running "Disable the crash reporter"
defaults write com.apple.CrashReporter DialogType -string "none"

running "Use AirDrop over every interface."
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

running "Check for software updates daily, not just once per week."
defaults write com.assple.SoftwareUpdate ScheduleFrequency -int 1

running "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

running "Disable guest account form login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false;

running "Enable auto-login at my user"
sudo defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser -string "$USER";

running "Disable some menu bar icons: Time Machine, Volume and User"
for domain in ~/Library/Preferences/ByHost/com.apple.stytemuiserver.*; do
  "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
  "/System/Library/CoreServices/Menu Extras/Volume.menu" \
  "/System/Library/CoreServices/Menu Extras/User.menu"
done

running "Play chime (iOS charging sound) when charging"
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && open /System/Library/CoreServices/PowerChime.app

###############################################################################
# SSD
###############################################################################

running "Disable the sudden motion sensor as it’s not useful for SSDs"
sudo pmset -a sms 0

running "Disable hibernation (speeds up entering sleep mode)"
sudo pmset -a hibernatemode 0;

running "Set standby delay to 24 hours (default is 1 hour)"
sudo pmset -a standbydelay 86400

running "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "


running "Remove the sleep image file to save disk space"
# remove locked status beforehand
sudo chflags nouchg /private/var/vm/sleepimage
sudo rm -rf /private/var/vm/sleepimage
# Create a zero-byte file instead
sudo touch /private/var/vm/sleepimage
# and make sure it can’t be rewritten
sudo chflags uchg /private/var/vm/sleepimage

sudo systemsetup -setrestartfreeze on