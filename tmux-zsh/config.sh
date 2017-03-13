#!/bin/sh 

# Program to configure and set tmux system

# update system first
sudo apt-get update

# installed all required packages
sudo apt-get install git zsh tmux fish -y

# change default shell to zsh
sudo chsh -s /bin/zsh

# install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


# install vim bundle manager vundle
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# move zsh, tmux and vim configuration files
cp conf_files/* ~
