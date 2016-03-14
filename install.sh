#!/bin/bash

mkdir -p ~/.i3

cmd=mv

if [[ $1 == -r ]]; then
    echo "Removing old files..."
    cmd=rm
else
    echo "Backing up old files..."
fi

$cmd -vf ~/.gitalias{,.old}
$cmd -vf ~/.vim{,.old}
$cmd -vf ~/.vimrc{,.old}
$cmd -vf ~/.i3/config{,.old}
$cmd -vf ~/.fonts

echo "Creating links..."
ln -svf $PWD/vim ~/.vim
ln -svf $PWD/vim-pathogen/autoload/pathogen.vim $PWD/vim/autoload/
ln -svf $PWD/vim-airline $PWD/vim/bundle/
ln -svf $PWD/tlib_vim $PWD/vim/bundle/
ln -svf $PWD/vim-addon-mw-utils $PWD/vim/bundle/
ln -svf $PWD/vim-snipmate $PWD/vim/bundle/
ln -svf $PWD/vim-snippets $PWD/vim/bundle/
ln -svf $PWD/vim-endwise $PWD/vim/bundle/
ln -svf $PWD/Conque-GDB $PWD/vim/bundle/
ln -svf $PWD/CamelCaseMotion/autoload/camelcasemotion.vim $PWD/vim/autoload
ln -svf $PWD/CamelCaseMotion/autoload/camelcasemotion.vim $PWD/vim/autoload
ln -svf $PWD/CamelCaseMotion/plugin/camelcasemotion.vim $PWD/vim/plugin
ln -svf $PWD/argtextobj.vim/plugin/argtextobj.vim $PWD/vim/plugin/
ln -svf $PWD/ctrlp.vim $PWD/vim/bundle/
ln -svf $PWD/vimrc ~/.vimrc
ln -svf $PWD/gvimrc ~/.gvimrc
ln -svf $PWD/gitalias ~/.gitalias
ln -svf $PWD/i3.config ~/.i3/config
ln -svf $PWD/fonts ~/.fonts
