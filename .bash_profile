# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# init rvm
source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
export PATH=/usr/local/bin:/Users/adrianoprea/.rvm/gems/ruby-2.0.0-p247/bin:/Users/adrianoprea/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/adrianoprea/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/adrianoprea/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=${PATH}:/Volumes/Dolores-HFS/android-sdk/sdk/tools
export PATH=${PATH}:/Volumes/Dolores-HFS/android-sdk/sdk/platform-tools
export PATH=${PATH}:$HOME/code/depot_tools

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH
