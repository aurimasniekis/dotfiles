#!/usr/bin/env bash

function linkFile() {
    sourceFile=$1
    targetFile=$2

    if [ ! -e "$targetFile" ]; then
       running "Linking $sourceFile → $targetFile"
       ln -fs /Users/$USER/.dotfiles/$sourceFile $targetFile
    elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
       running "Linking $sourceFile → $targetFile"
    else
       baseName=$(basename $sourceFile)
       running "Moving old file $targetFile → ~/.dotfiles/old/$baseName"
       mv $targetFile ./old/

       running "Linking $sourceFile → $targetFile"
       ln -fs /Users/$USER/.dotfiles/$sourceFile $targetFile
    fi
}

function copyFile() {
    sourceFile=$1
    targetFile=$2

    if [ ! -e "$targetFile" ]; then
       running "Copyinh $sourceFile → $targetFile"
       cp /Users/$USER/.dotfiles/$sourceFile $targetFile
    else
       baseName=$(basename $sourceFile)
       running "Moving old file $targetFile → ~/.dotfiles/old/$baseName"
       mv $targetFile ./old/

       running "Copying $sourceFile → $targetFile"
       cp /Users/$USER/.dotfiles/$sourceFile $targetFile
    fi
}