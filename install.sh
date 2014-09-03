#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to all files and subdirectories in ~/dotfiles
############################

dir=~/dotfiles
files=$(find . -maxdepth 1 -path './*' -exec basename {} \;) # list of files/folders to symlink in homedir

# create symlinks 
for file in $files; do
  if [ $file != ".git" ] && [ $file != "install.sh" ]; then
    rm -rf ~/$file
    echo "Creating symlink for $file."
    ln -s $dir/$file ~/$file
  fi
done

source ~/.bashrc
