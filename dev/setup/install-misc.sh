#!/bin/bash
# Just a basic setup for my own dev environment, to quickly get my machine up and running

echo "Updating vim plugins..."
# Create vim directories
mkdir -p .vim/plugged
mkdir -p .vim/autoload
# Download VimPlug
curl --silent -fLo .vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Own .vim dir
sudo chown -R ubuntu .vim
# Download .vimrc
wget --quiet "https://raw.githubusercontent.com/rdrsss/vimrc/master/.vimrc"
sudo chown -R ubuntu .vimrc


echo "Installing GCC & G++..."
sudo apt-get -q install -y gcc g++

echo "Installing Python(2.7)..."
sudo apt-get -q install -y python

echo "Installing Python-Pip..."
sudo apt-get -q install -y python-pip

echo "Fin..."
