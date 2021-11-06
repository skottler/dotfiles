export PATH="$HOME/bin:$HOME/go/bin:/usr/local/bin:$PATH"
export ZSH="/Users/skottler/.oh-my-zsh"

ZSH_THEME="robbyrussell"
VSCODE=code
plugins=(git golang vscode)

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
