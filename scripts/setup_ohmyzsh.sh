#!/bin/bash
#
# Just a quick script to run to install/refresh Oh-My-Zsh
# I also does some other tricks so read through it

# Remove any oh-my-zsh config
rm -rf ~/.oh-my-zsh

# Run the install script (unattended) for oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Download the zsh-autosuggestions plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Modify .zshrc to set ZSH_THEME
sed -i 's/ZSH_THEME.*/ZSH_THEME="simple_alex"/g' $HOME/.zshrc
# Modify .zshrc to set zsh-autosuggestions
sed -i 's/plugins=.*/plugins=(git zsh-autosuggestions)/g' $HOME/.zshrc

# Add my aliases to .zshrc
cat <<EOT >> ~/.zshrc
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi
EOT

# Symlink the simple_alex theme to the themes folder
ln -fs ~/.alex/zsh/simple_alex.zsh-theme ~/.oh-my-zsh/themes/simple_alex.zsh-theme

