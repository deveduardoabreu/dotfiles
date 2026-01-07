#!/usr/bin/env bash

set -e

# Colors for output
GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m" # No Color

# Directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Root of the repository
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# Source and destination files
SOURCE_FILE="$REPO_ROOT/.config/git/.gitconfig"
DEST_FILE="$HOME/.gitconfig"

# Check if source exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo -e "${RED}Error: Source file does not exist: $SOURCE_FILE${NC}"
    exit 1
fi

# Copy the new .gitconfig
echo -e "${GREEN}Copying .gitconfig to $DEST_FILE...${NC}"
cp -f "$SOURCE_FILE" "$DEST_FILE"

echo -e "${GREEN}Done! .gitconfig has been copied successfully.${NC}"

