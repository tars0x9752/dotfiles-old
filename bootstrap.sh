#!/bin/bash

DOTFILES_DIR=$HOME/dotfiles
cd $DOTFILES_DIR

# symlink dotfiles
./link.sh

echo "run brew bundle"
brew bundle

# Node.js environment
curl https://get.volta.sh | bash
volta install node
volta install yarn

# Ruby environment
rbenv install 2.7.4
rbenv global 2.7.4

# git config (expect name)
git config --global user.email '46079709+tars0x9752@users.noreply.github.com'
git config --global core.autocrlf false
git config --global init.defaultBranch main
