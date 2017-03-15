[ -n "$PS1" ] && source ~/.bash_profile

###-tns-completion-start-###
if [ -f /Users/adrian/.tnsrc ]; then 
    source /Users/adrian/.tnsrc 
fi
###-tns-completion-end-###

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
