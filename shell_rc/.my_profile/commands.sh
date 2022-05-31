#!/usr/bin/env bash

alias psg='ps -elf | grep'
alias pst='ps -aef --forest'
alias psf='ps -efww'

alias lm='ls -al --block-size=M'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


alias unzh='unar -encoding GB\ 18030 '
alias lzd='lazydocker'
alias pm='echo "sucg" | sudo -S purge'
alias fn='find . -name'
alias history='fc -il 1'
alias gitrup='git stash && git rebase upstream/master && git push && git stash apply && git add .'
alias py3='python3 '

alias gitpull='git pull --rebase'


# 递归统计当前目录中文件的行数
alias clinego="find . -not -path './venv/*' -not -path './vendor/*' -not -path './.git/*' -name '*.go' | xargs wc -l"
alias clinepy="find . -not -path './venv/*' -not -path './vendor/*' -not -path './.git/*' -name '*.py' | xargs wc -l"
alias clinejs="find . -not -path './venv/*' -not -path './vendor/*' -not -path './.git/*' -name '*.js' | xargs wc -l"
alias clineyaml="find . -not -path './venv/*' -not -path './vendor/*' -not -path './.git/*' -name '*.yaml' | xargs wc -l"
alias clineall="find . -not -path './venv/*' -not -path './vendor/*'  -not -path './src/vendor/*' -not -path './.git/*' -name '*.*' | xargs wc -l"

go env -w GOPROXY=https://goproxy.cn,direct

if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='lsd'

    # thefuck command
    eval $(thefuck --alias)

    alias bp='brew update; brew upgrade; brew cleanup -s; brew doctor; brew missing ; rm -rf $(brew --cache)'

    # homebrew -------------------
    curr_dir=$(pwd)
    # 替换brew.git:
    cd "$(brew --repo)"
    git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
    # 替换homebrew-core.git:
    cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
    git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
    # 替换homebrew-bottles:
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    #export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
    cd ${curr_dir}
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    eval `dircolors ~/.dircolors.ansi-universal`
fi
