#!/bin/sh

echo "-- Disable automatic update check..."
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool FALSE

if [ "$UPDATE_SYSTEM" != "true" ] && [ "$UPDATE_SYSTEM" != "1" ]; then
  exit
fi

echo "-- Downloading and installing system updates..."
softwareupdate -i -a
