#!/bin/bash

# Ask for password
sudo -v

# Get all files and move them to our dotfiles directory
for file in "ackrc" "aliases" "bash_profile" "bash_prompt" "bashrc" \
        "exports" "functions" "gitconfig" \
            "inputrc" "vimrc" "tmux.conf" "zshrc" "vim" "curlrc" \
            "wgetrc" ; do
    # mv "$HOME/$file" "$HOME/dotfiles/" > /dev/null 2>&1
    # Symlink the files back to ~/
    ln -s "$HOME/dotfiles/$file" "$HOME/.$file" > /dev/null 2>&1
done
echo "Done. For the changes to take effect, open a new tab or restart your terminal app."
