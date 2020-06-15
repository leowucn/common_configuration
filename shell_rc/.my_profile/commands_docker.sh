#!/usr/bin/env bash

# 强制删除所有镜像
alias dirmaf='docker rmi -f $(docker images -a -q)'
alias dcrmaf='docker rm -f $(docker ps -aq)'
alias dcspa='docker stop $(docker ps -aq)'

alias  dc='docker container'
alias  dcat='docker container attach'
alias  dccm='docker container commit'
alias  dccp='docker container cp'
alias  dccr='docker container create'
alias  dcdi='docker container diff'
alias  dcex='docker container exec'
alias  dcep='docker container export'
alias  dcin='docker container inspect'
alias  dcki='docker container kill'
alias  dclg='docker container logs'
alias  dcls='docker container ls'
alias  dcpa='docker container pause'
alias  dcpo='docker container port'
alias  dcpr='docker container prune'
alias  dcrn='docker container rename'
alias  dcrs='docker container restart'
alias  dcrm='docker container rm'
alias  dcru='docker container run'
alias  dcst='docker container start'
alias  dcss='docker container stats'
alias  dcsp='docker container stop'
alias  dcto='docker container top'
alias  dcun='docker container unpause'
alias  dcup='docker container update'
alias  dcwa='docker container wait'

alias  di='docker image'
alias  dibu='docker image build'
alias  dihi='docker image history'
alias  diim='docker image import'
alias  diin='docker image inspect'
alias  dilo='docker image load'
alias  dils='docker image ls'
alias  dipr='docker image prune'
alias  dipl='docker image pull'
alias  dipu='docker image push'
alias  dirm='docker image rm'
alias  disa='docker image save'
alias  dita='docker image tag'

alias  dn='docker network'
alias  dnco='docker network connect'
alias  dncr='docker network create'
alias  dndi='docker network disconnect'
alias  dnls='docker network ls'
alias  dnin='docker network inspect'
alias  dnpr='docker network prune'
alias  dnrm='docker network rm'

alias  dv='docker volume'
alias  dvcr='docker volume create'
alias  dvin='docker volume inspect'
alias  dvls='docker volume ls'
alias  dvpr='docker volume prune'
alias  dvrm='docker volume rm'

alias  dp='docker-compose'
alias  dpbu='docker-compose build'
alias  dpbd='docker-compose bundle'
alias  dpco='docker-compose config'
alias  dpcr='docker-compose create'
alias  dpdo='docker-compose down'
alias  dpev='docker-compose events'
alias  dpex='docker-compose exec'
alias  dphe='docker-compose help'
alias  dpim='docker-compose images'
alias  dpki='docker-compose kill'
alias  dplg='docker-compose logs'
alias  dppa='docker-compose pause'
alias  dppo='docker-compose port'
alias  dpps='docker-compose ps'
alias  dppl='docker-compose pull'
alias  dppu='docker-compose push'
alias  dprs='docker-compose restart'
alias  dprm='docker-compose rm'
alias  dpru='docker-compose run'
alias  dpsc='docker-compose scale'
alias  dpst='docker-compose start'
alias  dpsp='docker-compose stop'
alias  dpto='docker-compose top'
alias  dpun='docker-compose unpause'
alias  dpup='docker-compose up'
alias  dpve='docker-compose version'

alias  dm='docker-machine'
alias  dmac='docker-machine active'
alias  dmco='docker-machine config'
alias  dmcr='docker-machine create'
alias  dmen='docker-machine env'
alias  dmin='docker-machine inspect'
alias  dmip='docker-machine ip'
alias  dmki='docker-machine kill'
alias  dmls='docker-machine ls'
alias  dmpv='docker-machine provision'
alias  dmrc='docker-machine regenerate-certs'
alias  dmrs='docker-machine restart'
alias  dmrm='docker-machine rm'
alias  dmss='docker-machine ssh'
alias  dmsc='docker-machine scp'
alias  dmmo='docker-machine mount'
alias  dmst='docker-machine start'
alias  dmsp='docker-machine stop'
alias  dmsu='docker-machine status'
alias  dmur='docker-machine url'
alias  dmug='docker-machine upgrade'
alias  dmve='docker-machine version'

alias  de='docker node'
alias  dedm='docker node demote'
alias  dein='docker node inspect'
alias  dels='docker node ls'
alias  depm='docker node promote'
alias  deps='docker node ps'
alias  derm='docker node rm'
alias  deup='docker node update'

alias  ds='docker service'
alias  dscr='docker service create'
alias  dsin='docker service inspect'
alias  dslg='docker service logs'
alias  dsls='docker service ls'
alias  dsps='docker service ps'
alias  dsrm='docker service rm'
alias  dsrb='docker service rollback'
alias  dssc='docker service scale'
alias  dsup='docker service update'


