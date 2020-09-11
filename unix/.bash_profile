
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias compile='g++ -Wall -pedantic'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$PATH:/usr/lib/dart/bin"
export PATH="$PATH:~/dev/dotfiles/unix/"

alias dev='cd ~/dev/'
alias learn='cd ~/learn/'
alias windows='cd /mnt/c/dev'
alias dotupdate='cd ~/dev/dotfiles/unix/'
