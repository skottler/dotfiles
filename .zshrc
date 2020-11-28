ZSH=$HOME/.oh-my-zsh
ZSH_THEME="junkfood"

plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH=$HOME/.bin:$HOME/.rbenv/bin:$PATH

if [ -e ~/.rbenv ]; then
  eval "$(rbenv init -)"
fi
