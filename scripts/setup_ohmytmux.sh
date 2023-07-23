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

# Trick to get my theme
sed -i -e "/tmux_conf_theme_colour_17=/r$HOME/.alex/tmux/mytmuxtheme" ~/.config/tmux/tmux.conf.local

# Add cool write-to-all panes mode toggle
echo "# Add cool write-to-all panes mode toggle" >> ~/.config/tmux/tmux.conf.local
echo bind C-Y set-window-option synchronize-panes >> ~/.config/tmux/tmux.conf.local

