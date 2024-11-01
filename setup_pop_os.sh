#!/bin/bash

# This script sets up a fresh installation of Pop!_OS.
# If any tasks have already been completed, it will skip those tasks.
# Specifically, it does the following:
# 	- Remove directories
# 	- Make directories
#	- Clone repositories
#	- Install programs
#	- Add to PATH
#	- Install fonts
#
# To use the script, run the following from the command line:
# `curl https://github.com/george-greene/scripts/setup_pop_os.sh | sh`

if [ -d ~/Documents ]; then
	rmdir ~/Documents
fi

if [ -d ~/Music ]; then
	rmdir ~/Music
fi

if [ -d ~/Pictures ]; then
	rmdir ~/Pictures
fi

if [ -d ~/Templates ]; then
	rmdir ~/Templates
fi

if [ -d ~/Videos ]; then
	rmdir ~/Videos
fi

if [ ! -d ~/.config ]; then 
	mkdir ~/.config
fi

if [ ! -d ~/.fonts ]; then 
	mkdir ~/.fonts
fi

if [ ! -d ~/bin ]; then 
	mkdir ~/bin
fi

if [ ! -d ~/deb ]; then 
	mkdir ~/deb
fi

if [ ! -d ~/dev ]; then 
	mkdir ~/dev
fi

if [ ! -d ~/doc ]; then 
	mkdir ~/doc
fi

if [ ! -d ~/etc ]; then 
	mkdir ~/etc
fi

if [ ! -d ~/git ]; then 
	mkdir ~/git
fi

if [ ! -d ~/lib ]; then 
	mkdir ~/lib
fi

if [ ! -d ~/src ]; then 
	mkdir ~/src
fi

if [ ! -d ~/tar ]; then 
	mkdir ~/tar
fi

if [ ! -d ~/tgz ]; then 
	mkdir ~/tgz
fi

if [ ! -d ~/txt ]; then 
	mkdir ~/txt
fi

if [ ! -d ~/zip ]; then 
	mkdir ~/zip
fi

if ! command -v brave-browser-nightly 2>&1 >/dev/null
then
	echo
fi

if ! command -v gh 2>&1 >/dev/null
then
	echo
fi

if ! command -v ghcup 2>&1 >/dev/null
then
	echo
fi

if ! command -v go 2>&1 >/dev/null
then
	echo
fi

if ! command -v rustup 2>&1 >/dev/null
then
	echo
fi

if ! command -v tmux 2>&1 >/dev/null
then
	echo
fi

if ! command -v vim 2>&1 >/dev/null
then
	echo
fi
