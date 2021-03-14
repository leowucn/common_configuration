#!/usr/bin/env bash

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#--------------------------------
#golang
export GOPATH=$HOME/go_work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GO15VENDOREXPERIMENT=1
export GO111MODULE=on
export PATH="$PATH:$HOME/flutter/bin"

#--------------------------------
export no_proxy="10.*, 127.0.0.1, localhost, *.cnn.com, 192.168.1.10, domain.com:8080"

#--------------------------------
export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="rkj-repos"
#ZSH_THEME="tjkirch"
#ZSH_THEME="xiong-chiamiov"
#ZSH_THEME="xiong-chiamiov-plus"
if [[ "$OSTYPE" == "darwin"* ]]; then
    ZSH_THEME="ys"
    ZSH_DISABLE_COMPFIX=true
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
)
source ${ZSH}/oh-my-zsh.sh

# 关闭ubuntu server闪烁
echo -n -e '\e[?17;14;224c'


# 关闭mac自动生成.DS_store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

ulimit -S -n 10240


export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
