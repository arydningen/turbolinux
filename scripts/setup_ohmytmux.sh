#!/bin/bash
#
# Just a quick script to run to install/refresh Oh-My-Tmux
# Note: It uses the http remote

# Remove any tmux config
rm -rf ~/.config/tmux
rm -rf ~/.local/share/tmux

git clone https://github.com/gpakosz/.tmux.git ~/.config/tmux --depth 1 && nvim

