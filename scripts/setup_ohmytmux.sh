#!/bin/bash
#
# Just a quick script to run to install/refresh Oh-My-Tmux
# Note: It uses the http remote

# Remove any tmux config
rm -rf ~/.config/tmux
rm -rf ~/.local/share/tmux

# Clone the repo directly to the .config folder
git clone https://github.com/gpakosz/.tmux.git ~/.config/tmux --depth 1

# Hack to just get it up and woriking
mv $HOME/.config/tmux/.tmux.conf $HOME/.config/tmux/tmux.conf
mv $HOME/.config/tmux/.tmux.conf.local $HOME/.config/tmux/tmux.conf.local

# Set color theme
cat <<EOT >> ~/.config/tmux/tmux.conf.local
# Alex theme
tmux_conf_theme_colour_1="#080808"    # dark gray
tmux_conf_theme_colour_2="#303030"    # gray
tmux_conf_theme_colour_3="#8a8a8a"    # light gray
tmux_conf_theme_colour_4="#87875f"    # Wheat4
tmux_conf_theme_colour_5="#ffd700"    # Gold1
tmux_conf_theme_colour_6="#080808"    # dark gray
tmux_conf_theme_colour_7="#080808"    # dark gray
tmux_conf_theme_colour_8="#080808"    # dark gray
tmux_conf_theme_colour_9="#ffd700"    # gold1
tmux_conf_theme_colour_10="#5f5faf"   # SlateBlue3
tmux_conf_theme_colour_11="#5fff00"   # green
tmux_conf_theme_colour_12="#8a8a8a"   # light gray
tmux_conf_theme_colour_13="#ffd700"    # gold1
tmux_conf_theme_colour_14="#ffd700"    # gold1
tmux_conf_theme_colour_15="#080808"   # dark gray
tmux_conf_theme_colour_16="#5f5faf"   # SlateBlue3
tmux_conf_theme_colour_17="#5f5faf"   # SlateBlue3
EOT


