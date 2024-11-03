#!/bin/bash

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
	sudo apt install curl
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
	sudo apt update
	sudo apt install brave-browser-nightly
fi

if ! command -v gh 2>&1 >/dev/null
then
	(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
		&& sudo mkdir -p -m 755 /etc/apt/keyrings \
		&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
		&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
		&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
		&& sudo apt update \
		&& sudo apt install gh -y
fi

if ! command -v ghcup 2>&1 >/dev/null
then
	curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi

if ! command -v go 2>&1 >/dev/null
then
	echo
fi

if ! command -v rustup 2>&1 >/dev/null
then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

if ! command -v tmux 2>&1 >/dev/null
then
	sudo apt install tmux
fi

if ! command -v vim 2>&1 >/dev/null
then
	sudo apt install vim
fi

