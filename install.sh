#!/bin/zsh
export DOTFILE_HOME="$HOME/dotfiles"
export CABOCHON_HOME="$HOME/cabochon"
export MONOLITH_HOME="$CABOCHON_HOME/packages/monolith"
export UNIVERSE_HOME="$CABOCHON_HOME/packages/universe"

cp "$DOTFILE_HOME/.zshrc" "$HOME/.zshrc"
source "$HOME/.zshrc"
