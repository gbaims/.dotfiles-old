#!/bin/bash

set -e
cd "$HOME"
DOTFILES_ROOT=".dotfiles"

ln_s () {
  ln -sfn "$DOTFILES_ROOT/$1" "$2"
}

echo "Configuring Git"
  ln_s .gitconfig .

echo "Configuring Mintty"
  ln_s .minttyrc .

echo "Configuring Input"
  ln_s .inputrc .

echo "Configuring Vim"
  if [[ -d ".vim" && ! -L ".vim" ]] ; then
    rm -rf .vim
  fi
  ln_s .vim .
  ln_s .vimrc .

echo "Reloading the Shell"
  exec $SHELL -l 
