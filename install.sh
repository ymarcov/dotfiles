#!/bin/bash

set -e

mkdir -p ~/.i3

cmd=mv

if [[ $1 == -r ]]; then
    echo "Removing old files..."
    cmd=rm
else
    echo "Backing up old files..."
fi

$cmd -vf ~/.vim{,.old}
$cmd -vf ~/.vimrc{,.old}
$cmd -vf ~/.i3/config{,.old}

echo "Creating links..."
ln -svf $PWD/vim ~/.vim
ln -svf $PWD/vim-pathogen/autoload/pathogen.vim $PWD/vim/autoload/
ln -svf $PWD/vim-airline $PWD/vim/bundle/
ln -svf $PWD/vim-twig $PWD/vim/bundle/
ln -svf $PWD/vimrc ~/.vimrc
ln -svf $PWD/i3.config ~/.i3/config

fonts/install.sh
