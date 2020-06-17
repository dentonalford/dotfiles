#!/bin/bash

DOTFILES_ZSHRC="$HOME/dotfiles/.zshrc"
TARGET_ZSHRC="$HOME/.zshrc"

cat $DOTFILES_ZSHRC >> $TARGET_ZSHRC
