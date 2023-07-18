#!/bin/bash

#cp -f ./bash/bash_alex ~/.bash_alex
#cp -f ./zsh/zshrc ~/.zshrc

# Create symlinks to the dotfiles
echo "Creating Symlinks to .dotfiles"
ln -fs ~/.alex/bash/bash_aliases ~/.bash_aliases
ln -fs ~/.alex/bash/bash_alex ~/.bash_alex
ln -fs ~/.alex/zsh/zshrc ~/.zshrc

# Make bashrc respect me
echo "Activating config in .bashrc"

if ! grep -q bash_alex ~/.bashrc; then
echo "Adding ~/.bash_alex"
cat <<EOT >> ~/.bashrc
if [ -f ~/.bash_alex ]; then
   . ~/.bash_alex
fi
EOT

fi

if ! grep -q bash_aliases ~/.bashrc; then
echo "Adding ~/.bash_aliases"
cat <<EOT >> ~/.bashrc
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi
EOT

fi

# Reload .bashrc
. ~/.bashrc


