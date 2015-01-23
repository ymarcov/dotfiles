#!/bin/bash

mkdir -p ~/.i3

echo "Backing up old files..."
mv -f ~/.vimrc{,.old}
mv -f ~/.i3/config{,.old}

echo "Creating links..."
ln -sv $PWD/vimrc ~/.vimrc
ln -sv $PWD/i3.config ~/.i3/config
