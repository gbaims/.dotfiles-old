#!/bin/bash

set -e
cd "$HOME"
DOTFILES_ROOT=".dotfiles"

ln_s () {
  ln -sfn "$DOTFILES_ROOT/$1" "$2"
}

echo "Configuring Bash"
  ln_s .bash_aliases .

echo "Configuring Git"
  ln_s .gitconfig .

echo "Configuring Mintty"
echo "Depending on the OS, you'll need to copy .minttyrc to a specific folder on host OS."
  ln_s .minttyrc .

echo "Configuring Input"
  ln_s .inputrc .

echo "Configuring Vim"
  if [[ -d ".vim" && ! -L ".vim" ]] ; then
    rm -rf .vim
  fi
  ln_s .vim .
  ln_s .vimrc .

echo "Configuring Shell colors"
  exec $SHELL "$DOTFILES_ROOT/base16-shell/scripts/base16-solarized-dark.sh"

echo "Reloading the Shell"
  exec $SHELL -l 
