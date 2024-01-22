#!/bin/bash
dotfiles_repo="/home/alex/git/turbolinux/dotfiles"  # Replace with the actual path to your dotfiles repo
# Check if the dotfiles repo exists
if [ -d "$dotfiles_repo" ]; then
    cd "$dotfiles_repo" || exit
    # Copy dotfiles to home folder
    find . -maxdepth 1 -type f -exec cp -v {} "$HOME/" \;
    # Copy dotdirectories to home folder
    find . -maxdepth 1 -type d -exec cp -Rv {} "$HOME/" \;
    echo "Dotfiles copied to home folder successfully."
else
    echo "Error: Dotfiles repo not found."
fi
