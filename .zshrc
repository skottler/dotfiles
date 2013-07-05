ZSH=$HOME/.oh-my-zsh
ZSH_THEME="junkfood"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/samkottler/.local/bin:/home/samkottler/bin

PATH=$HOME/.bin:$HOME/.rbenv/bin:$PATH

if [ -e ~/.rbenv ]; then
  eval "$(rbenv init -)"
fi

function virt-ssh() {
  ssh root@$(sudo /usr/local/bin/virt-address $1)
}

function virt-sshfs() {
  if [ test -e ~/Documents/tmpfs ]; then
    mkdir ~/Documents/tmpfs
  fi
  sudo umount ~/Documents/tmpfs
  sshfs -o nonempty root@$(sudo /usr/local/bin/virt-address $1):$2 ~/Documents/tmpfs
}

# ssh authentication component
if [ -e $HOME/.gnupg/gpg-agent-wrapper ]; then
  source ${HOME}/.gnupg/gpg-agent-wrapper
fi

alias kkoji="koji -c ~/.koji/katello-config"

# virtualenvwrapper
if [ -e /usr/bin/virtualenvwrapper.sh ]; then
  source virtualenvwrapper.sh
fi

function eluminate() {
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/jvm/java/jre/lib/amd64 javaws $1
}
