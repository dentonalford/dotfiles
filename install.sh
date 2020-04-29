#!/bin/zsh

DOTFILES_ZSHRC="./.zshrc"
TARGET_ZSHRC="$HOME/.zshrc"

echo -e '\n\n# Contents below copied from dotfiles .zshrc' >> TARGET_ZSHRC
cat DOTFILES_ZSHRC >> TARGET_ZSHRC
echo -e '\n# End .zshrc copy\n\n' >> TARGET_ZSHRC
source TARGET_ZSHRC
