#!/bin/sh

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
  ln_s .vim .
  ln_s .vimrc .

echo "Reloading the Shell"
  exec $SHELL -l 
