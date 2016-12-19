#!/usr/bin/env bash

action "Configuring Git"

running "Adding global config file"
linkFile ./apps/git/.gitconfig ~/.gitconfig
copyFile ./apps/git/.gitconfig.local ~/.gitconfig.local