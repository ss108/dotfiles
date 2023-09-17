alias actvenv='if [ -d venv ]; then . venv/bin/activate; elif [ -d .venv ]; then . .venv/bin/activate; fi'

# Courtlistener
alias cl-docker-up='docker compose -f ./docker/courtlistener/docker-compose.yml up -d'
alias cl-docker-down='docker compose -f ./docker/courtlistener/docker-compose.yml down'
