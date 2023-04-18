#!/bin/bash

#TODO
configurl="https://raw.githubusercontent.com/AfzGit/quick-vim/main/init.vim"

# Installing the config file
curl -s "$configurl" >> /home/$USER/.vimrc
echo "Config file installed"

# Installing VIM-Plug
read -p "Install VIM-Plug? (Plugin installer) [Y/n]" choice
if [[ "$choice" = "n" || "$choice" = "N" ]]; then
    echo "Exiting..."
    exit
else
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "Add plugins in ~/.vimrc file and then run :PlugInstall"
fi

echo "Done."
