#!/bin/bash
#
# Just a quick script to run to install/refresh NvChad
# Note: It uses my fork of NvChad and uses the http remote

# Remove any nvim config
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/arydningen/NvChad ~/.config/nvim --depth 1 && nvim

