#!/bin/bash

echo "Installing dotfiles..."

# backup existing file
if [ -f ~/.bash_aliases ]; then
    cp ~/.bash_aliases ~/.bash_aliases.backup
    echo "Backup created: ~/.bash_aliases.backup"
fi

# copy new aliases
cp bash_aliases ~/.bash_aliases

# ensure bashrc loads it
if ! grep -q ".bash_aliases" ~/.bashrc; then
    echo '
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
' >> ~/.bashrc
fi

# reload shell
source ~/.bashrc

echo "Done! Restart terminal or run: source ~/.bashrc"
