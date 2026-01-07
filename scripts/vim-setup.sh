#!/usr/bin/env bash

set -e

# Colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m" # No Color

# Directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Base directory of the dotfiles repository (scripts/..)
DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo -e "${BLUE}==> Starting Neovim setup${NC}"

# Check if Neovim is already installed
if ! command -v nvim >/dev/null 2>&1; then
    echo -e "${YELLOW}Neovim not found. Installing via snap...${NC}"

    sudo snap install nvim --classic

    echo -e "${GREEN}Neovim installed successfully.${NC}"

else
    echo -e "${GREEN}Neovim is already installed.${NC}"
fi

# Neovim configuration directory in HOME
NVIM_CONFIG_DIR="$HOME/.config/nvim"

echo -e "${BLUE}Creating Neovim configuration directory...${NC}"

mkdir -p "$NVIM_CONFIG_DIR"

# Create symbolic links to configuration files
echo -e "${BLUE}Creating symbolic links...${NC}"

ln -sf "$DOTFILES_DIR/.config/nvim/init.vim" "$NVIM_CONFIG_DIR/init.vim"

ln -sf "$DOTFILES_DIR/.config/nvim/plugins.vim" "$NVIM_CONFIG_DIR/plugins.vim"

mkdir -p "$NVIM_CONFIG_DIR/autoload"

ln -sf "$DOTFILES_DIR/.config/nvim/autoload/plug.vim" "$NVIM_CONFIG_DIR/autoload/plug.vim"

echo -e "${GREEN}Neovim setup completed successfully! 🚀${NC}"
