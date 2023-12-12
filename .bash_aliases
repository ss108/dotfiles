alias actvenv='if [ -d venv ]; then . venv/bin/activate; elif [ -d .venv ]; then . .venv/bin/activate; fi'
alias crvenv='python3 -m venv .venv'

# Courtlistener
alias cl-docker-up='docker compose -f ./docker/courtlistener/docker-compose.yml up -d'
alias cl-docker-down='docker compose -f ./docker/courtlistener/docker-compose.yml down'

alias ruff-check='ruff check $(git status --porcelain | grep "^ M" | cut -d " " -f 3-)'
alias ruff-fix='ruff check $(git status --porcelain | grep "^ M" | cut -d " " -f 3-) --fix'
