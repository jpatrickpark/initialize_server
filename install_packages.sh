#!/bin/bash

# Create a non-root user with sudo priviliege first

# installs pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# installs vim-go-ide
git clone git@github.com:farazdagi/vim-go-ide.git ~/.vim_go_runtime
sh ~/.vim_go_runtime/bin/install
echo "alias vimgo='vim -u ~/.vimrc.go'" >> .profile

# installs gcc
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential

# installs ctags
tar zxvf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make
make install
