export PATH="/home/ss108/.local/bin:$PATH"
alias activate_venv='. venv/bin/activate'

eval "$(direnv hook bash)"

[ -f "/home/ss108/.ghcup/env" ] && source "/home/ss108/.ghcup/env" # ghcup-env
export DOCKER_HOST=unix:///run/user/1000/docker.sock

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH