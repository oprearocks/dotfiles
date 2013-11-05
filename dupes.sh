#!/bin/bash

for file in ".ackrc" ".aliases" ".bash_profile" ".bash_prompt" ".bashrc" \
        ".exports" ".functions" ".gitattributes" ".gitconfig" ".gitignore" \
            ".inputrc" ".vimrc" ".tmux.conf" ".zshrc" ".vim"; do
#        mv "$HOME/$file" . > /dev/null 2>&1
        ln -s "$HOME/dotfiles/$file" "$HOME/$file" > /dev/null 2>&1
	# rm -rf "$HOME/$file" > /dev/null 2>&1
	# rm -rf "$file" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a terminal restart to take effect."
