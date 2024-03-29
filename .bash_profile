git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="[\u@\h \W]\\$\\$(git_branch)"
## Loads .bashrc
if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

export PATH="/home/ss108/.local/bin:$PATH"

# OCaml
test -r /home/ss108/.opam/opam-init/init.sh && . /home/ss108/.opam/opam-init/init.sh >/dev/null 2>/dev/null || true

# Haskell
[ -f "/home/ss108/.ghcup/env" ] && source "/home/ss108/.ghcup/env" # ghcup-env

eval "$(direnv hook bash)"

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

if [ -e /home/ss108/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ss108/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
