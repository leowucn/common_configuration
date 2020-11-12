#!/usr/bin/env bash

check_configuration() {
    echo "检查配置..."
#    if [[ -n "${http_proxy}" ]] || [[ -n "${https_proxy}" ]] ; then
#        echo "请不要上传代理配置，配置上传已中断!"
#        exit
#    fi
    echo "检查配置结束!"
}

propagate_configuration() {
    cp $HOME/.zshrc ../shell_rc
    cp $HOME/.ideavimrc ..
    cp $HOME/.my_vim/* ../vim/.my_vim
    cp $HOME/.my_profile/* ../shell_rc/.my_profile
    rm -rf ../vim/.vim
    cp -r $HOME/.vim ../vim

    rm -rf ../.oh-my-zsh && cp -r $HOME/.oh-my-zsh ..
}

release_name="Batman"
release_tag=""
artifact_filename="common_configuration.tar.gz"
current_rn=""

generate_tag() {
    release_number=$(< ../.release_number)
    current_rn=$((release_number + 1))
    release_tag="v1.${current_rn}"
}

generate_artifact() {
    rm -rf /tmp/common_configuration
    cp -r ../../common_configuration /tmp
    curr_dir=$(pwd)
    cd /tmp
    # remove useless files
    rm -f common_configuration/.github_release_token
    rm -rf common_configuration/.git
    rm -rf common_configuration/.gitignore
    rm -rf common_configuration/.idea
    tar fcz ${artifact_filename} common_configuration
    cd ${curr_dir}
}

clean_unused_files() {
    rm -rf /tmp/common_configuration
    #rm -f /tmp/${artifact_filename}
    mv /tmp/${artifact_filename} ~/Documents
}

release_to_github() {
    if ! which github-release; then
      echo "安装github-release工具!"
      go get github.com/aktau/github-release
    fi

    echo "开始上传配置压缩包!"
    if [[ $? -eq 0 ]]; then
        echo ${current_rn} > ../.release_number
    fi

    export GITHUB_TOKEN=$(< ../.github_release_token)
    github-release release \
        --user leowucn \
        --repo common_dev_configuration \
        --tag ${release_tag} \
        --name "${release_name} "${release_tag} \
        --description "These are my common configurations of development environment which are propagated from various tools!"

    github-release upload \
        --user leowucn \
        --repo common_configuration \
        --tag ${release_tag} \
        --name "${artifact_filename}" \
        --file "/tmp/${artifact_filename}"
}

git_opt() {
    if ! [[ `git status --porcelain` ]]; then
      echo "没有做任何修改，配置上传已中断!"
      exit
    fi

    cd ..
    git add .
    git commit -m "update configuration"
    git push
}

check_configuration
propagate_configuration
generate_tag
generate_artifact
#release_to_github
clean_unused_files
git_opt
