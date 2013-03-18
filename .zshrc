ZSH=$HOME/.oh-my-zsh
ZSH_THEME="junkfood"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/samkottler/.local/bin:/home/samkottler/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm
rvm use 1.9.3 > /dev/null

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
source ${HOME}/.gnupg/gpg-agent-wrapper

# virtualenvwrapper
source virtualenvwrapper.sh

function eluminate() {
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/jvm/java/jre/lib/amd64 javaws $1
}
