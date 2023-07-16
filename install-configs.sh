#!/usr/bin/zsh

CONFIG_DIR=${XDG_CONFIG_HOME:-${HOME}/.config}
echo "Configuration at: $CONFIG_DIR"

# ZSHRC
ZSH_CONFIG_FILE="$HOME/.zshrc"
echo "Copying nvim configuration to $ZSH_CONFIG_FILE"
cp .zshrc >> $ZSH_CONFIG_FILE


# NVIM
NVIM_CONFIG_DIR="$CONFIG_DIR/nvim"

echo "Creating nvim configuration folder at $NVIM_CONFIG_DIR"
mkdir $NVIM_CONFIG_DIR

echo "Copying nvim configuration to $NVIM_CONFIG_DIR"
cp -a ./nvim $NVIM_CONFIG_DIR

# TMUX
TMUX_CONFIG_DIR="$CONFIG_DIR/tmux"

echo "Creating tmux configuration folder at $TMUX_CONFIG_DIR"
mkdir $TMUX_CONFIG_DIR

echo "Copying tmux configuration to $TMUX_CONFIG_DIR"
cp -a ./tmux $TMUX_CONFIG_DIR
