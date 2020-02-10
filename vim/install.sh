#!/bin/sh
set -e

cd ~/dotfiles/vim

echo 'set runtimepath+=~/dotfiles/vim
source ~/dotfiles/vim/basic.vim
source ~/dotfiles/vim/filetypes.vim
source ~/dotfiles/vim/plugins_config.vim
source ~/dotfiles/vim/extended.vim
try
source ~/.vim/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Successfully configured VIM, enjoy"
