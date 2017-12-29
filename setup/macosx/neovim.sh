#!/bin/bash

if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
    echo "Installing Vim-Plug"	
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "Vim-Plug is already installed. Skipping to the next step."
fi

if [ ! -d ~/vimconfig ]; then
    echo "Creating symlink to the configuration folder."
    pushd ../.. > /dev/null
    ln -s `pwd`/config ~/vimconfig
    popd > /dev/null
else
    echo "Configuration folder is already sym-linked."
fi

if [ ! -f ~/.config/nvim/init.vim ]; then
    echo "Creating symlink to the init.vim."
    ln -s ~/vimconfig/init.vim ~/.config/nvim/init.vim
else
    echo "init.vim is already sym-linked."
fi

