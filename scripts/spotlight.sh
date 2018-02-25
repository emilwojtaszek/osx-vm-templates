#!/bin/sh

echo "-- Disable Spotlight Indexing..."
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
