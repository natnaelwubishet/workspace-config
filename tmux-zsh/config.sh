#!/bin/sh 

# Program to configure and set tmux system

# update system first
sudo apt-get update

# installed all required packages
sudo apt-get install git zsh tmux fish -y

# change default shell to zsh
sudo chsh -s /bin/zsh

# install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# install vim bundle manager vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    mkdir -p ~/.vim
    mkdir -p ~/.vim/bundle
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# move zsh, tmux and vim configuration files
cd conf_files
cp .zshrc .vimrc .tmux.conf ~

# move alias zsh to oh-my-zsh 
cp alias.zsh ~/.oh-my-zsh/lib/
