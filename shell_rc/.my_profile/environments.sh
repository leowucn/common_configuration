#!/usr/bin/env bash

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#--------------------------------
#golang
export GOPATH=$HOME/go_work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GO15VENDOREXPERIMENT=1
export GO111MODULE=on

#--------------------------------
#export http_proxy=http://127.0.0.1:8123
#export https_proxy=http://127.0.0.1:8123
export no_proxy="10.*, 127.0.0.1, localhost, *.cnn.com, 192.168.1.10, domain.com:8080"

#--------------------------------
export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="rkj-repos"
#ZSH_THEME="tjkirch"
#ZSH_THEME="xiong-chiamiov"
#ZSH_THEME="xiong-chiamiov-plus"
if [[ "$OSTYPE" == "darwin"* ]]; then
    ZSH_THEME="ys"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    ZSH_THEME="gnzh"
fi
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    extract
    z
    sudo
    autojump
    kubetail
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source ${ZSH}/oh-my-zsh.sh
autoload -U compinit && compinit -u

#--------------------------------
export PATH=$PATH:$HOME/.krew/bin

# 关闭ubuntu server闪烁
echo -n -e '\e[?17;14;224c'
