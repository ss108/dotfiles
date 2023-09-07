export PATH="/home/ss108/.local/bin:$PATH"
alias actvenv='if [ -d venv ]; then . venv/bin/activate; elif [ -d .venv ]; then . .venv/bin/activate; fi'



eval "$(direnv hook bash)"

[ -f "/home/ss108/.ghcup/env" ] && source "/home/ss108/.ghcup/env" # ghcup-env
export DOCKER_HOST=unix:///run/user/1000/docker.sock

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Courtlistener
alias cl-docker-up='docker compose -f ./docker/courtlistener/docker-compose.yml up -d'
alias cl-docker-down='docker compose -f ./docker/courtlistener/docker-compose.yml down'
