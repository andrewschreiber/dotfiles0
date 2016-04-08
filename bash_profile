echo Welcome to your terminal window!
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export NVM_DIR="/Users/andrew/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


if [ -f -/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias earn='cd ~/git/ios/app/EarnestApp'
alias earngit='cd ~/git/ios'
alias config='cd ~/git/node-mobile-config'

alias bashprofile='vim ~/.bash_profile'

set -o vi
export PATH=/Users/andrew/arcanist/bin:$PATH
test -f ~/.git-completion.bash && . $_

c() { cd "$@" && ls; }
b() { cd ..}
