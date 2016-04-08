# Path to your oh-my-zsh installation.
export ZSH=/Users/andrew/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx)

# User configuration

export PATH="/Users/andrew/arcanist/bin:/Users/andrew/.nvm/v0.10.40/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/9.4/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

echo Welcome to your terminal window!
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export NVM_DIR="/Users/andrew/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias earn='cd ~/git/ios/app/EarnestApp'
alias earngit='cd ~/git/ios'
alias config='cd ~/git/node-mobile-config'
alias tapes='c ~/git/node-loantapes'
alias payment='c ~/git/node-loan-payment'
alias mono='c ~/git/earnest'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias refreshzsh='. ~/.zshrc'

alias killnode='killall -9 node'
alias startpayment='panel; payment; nvm use 4; npm install; npm start'
alias starttapes='panel; tapes; nvm use 5; npm install; npm start'
alias startmono='panel; mono; grunt start:client-rest'
alias npmrestart='npm install; npm start'
alias domohela='killnode; startpayment; starttapes; cmohela'

alias cmohela='c ~/Documents/loantapes; curl -vvv --max-time 4000 -o mohela_mini.json http://localhost:3000/1.0/reports/mohela/A/2016/02/08/json'

alias csecuritization='c ~/Documents/loantapes; curl -vvv --max-time 4000 -o securitization_mini.csv http://localhost:3000/1.0/reports/securitization/B/2016/02/08/; say done'

alias cbpc='c ~/Documents/loantapes; curl -vvv --max-time 4000 -o bpc_mini.json http://localhost:3000/1.0/reports/bpc/2016/02/08/json'

alias cdbrs='c ~/Documents/loantapes; curl -vvv --max-time 4000 -o dbrs_min.json http://localhost:3000/1.0/reports/dbrs/2016/02/08/json'
alias tapesdocs='c ~/Documents/loantapes'

# TODO: How to do triple nested quotation without local variables
  local itermactivate='tell application "iTerm" to activate'
  local itermpanel='tell application "System Events" to tell process "iTerm" to keystroke "d" using command down'
alias panel='osascript -e ${itermactivate} -e ${itermpanel}'

open_by_browser(){ open -a $1 $2}
alias firefox='open_by_browser firefox'
alias chrome='open_by_browser "Google Chrome"'

set -o vi
export PATH=/Users/andrew/arcanist/bin:$PATH

c() { cd "$@" && ls; }
b() { cd .. && ls; }
so() { open -a "Google Chrome" "http://stackoverflow.com/"; }
