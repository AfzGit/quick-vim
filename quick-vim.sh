#!/bin/bash

#TODO
configurl="https://raw.githubusercontent.com/AfzGit/quick-vim/main/init.vim"

# Installing the config file
curl -s "$configurl" >> /home/$USER/.vimrc
echo "Config file installed"

# Installing VIM-Plug
echo "installing VIM Plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Add plugins in ~/.vimrc file and then run :PlugInstall"
echo "Done."
