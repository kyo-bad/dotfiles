alias rmdockervolume='docker volume ls -f "dangling=true" -q | xargs docker volume rm'
alias dockerimupdate='docker images | cut -d " " -f1 | tail -n +2 | sort | uniq | egrep -v "^<none>$" | xargs -L1 docker pull && docker images | awk "/<none/{print $3}" | xargs docker rmi'
alias b='cd ..'

