#!/bin/bash

echo "This program requires ruby and bundler"

echo "Installing gems"
bundle install

echo "Setting up the soundbored sounds directory at /usr/local/var/soundbored/sounds"
mkdir -p /usr/local/var/soundbored/sounds

echo "Bootstrapping the sounds directory"
cp sounds/* /usr/local/var/soundbored/sounds/
cp songs.yml /usr/local/var/soundbored/songs.yml

echo "Adding the default songs.yml to /usr/local/soundbored/sounds"
cp songs.yml /usr/local/var/soundbored

echo "Installing soundbored at /usr/local/bin/soundbored"
cp -f Thorfile /usr/local/var/soundbored/Thorfile
ln -s /usr/local/var/soundbored/Thorfile /usr/local/bin/soundbored && chmod 755 /usr/local/bin/soundbored
