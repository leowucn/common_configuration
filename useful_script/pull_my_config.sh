#!/usr/bin/env bash

if [ "$EUID" = 0 ]
  then echo "请不要使用root身份运行该脚本!"
  exit
fi

helpFunction()
{
   echo ""
   echo "Usage: $0 -p password"
   exit  # Exit script after printing help
}

while getopts "p:" opt
do
   case "$opt" in
      p ) password="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$password" ]
then
   echo "password is empty";
   helpFunction
fi

install_packages() {
    # centos类系统
    if [ -f /etc/redhat-release ]; then
        echo "$password" | sudo -S yum install -y autojump htop zsh git the_silver_searcher openssl polipo lrzsz
    elif [ -f /etc/lsb-release ]; then
        # debian类系统
	echo "$password" | sudo -S apt update -y
	echo "$password" | sudo -S apt install -y autojump htop zsh openssl polipo lrzsz
    else
        brew install zsh htop autojump lsd thefuck the_silver_searcher navi go openssl polipo fd
    fi
}

change_to_zsh() {
    zsh_path=$(which zsh)

    if ! (grep -q ${zsh_path} /etc/shells); then
        echo "$password" | sudo -S sh -c "echo $zsh_path >> /etc/shells"
    fi

    echo "$password" | sudo -S chsh -s "$zsh_path" "${USER}"

    if [ ! -d $HOME/.oh-my-zsh/ ]; then
        cp -r ../.oh-my-zsh $HOME
    fi
}

clean_old_config() {
    rm -rf $HOME/.my_vim $HOME/.my_profile
}

propagate_config() {
    mkdir -p $HOME/.vim
    cp ../.dircolors.ansi-universal $HOME
    rm -rf $HOME/.my_vim && cp -r ../vim/.my_vim $HOME
    rm -rf $HOME/.vim && cp -r ../vim/.vim $HOME
    rm -rf $HOME/.my_profile && cp -r ../shell_rc/.my_profile $HOME
    cp ../shell_rc/.zshrc $HOME
    cp ../.ideavimrc $HOME
}

vim_config() {
    if [ ! -f $HOME/.vimrc ]; then
        touch $HOME/.vimrc
    fi

    if ! (grep -q "my_vimrc.vim" $HOME/.vimrc); then
        echo source $HOME/.my_vim/my_vimrc.vim >> $HOME/.vimrc
    fi

#    目前已经有了离线安装vim插件的功能，这里不需要在线安装插件了
#    vim +PluginUpdate +qall
}

kubernetes_config() {
    if [ ! -f "${HOME}/.kube/config" ]; then
        if echo "$password" | sudo -S test -f "/etc/kubernetes/admin.conf"; then
            mkdir -p $HOME/.kube
            echo "$password" | sudo -S cp /etc/kubernetes/admin.conf $HOME/.kube/config
            echo "$password" | sudo -S chown $(id -u):$(id -g) $HOME/.kube/config
        fi
    fi
}

docker_config() {
     # 添加普通用户使用docker命令的权限，下面是偷懒的办法
    echo "$password" | sudo -S chmod 666 /var/run/docker.sock
}

install_packages
change_to_zsh
clean_old_config
propagate_config
vim_config
kubernetes_config
docker_config

echo "配置更新完成，下次登录生效!"
