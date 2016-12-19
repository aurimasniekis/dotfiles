#!/usr/bin/env bash

action "Setting Apple Mail Settings"

running "Disable inline attachments in Mail.app (just show the icons)"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true