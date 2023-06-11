git_branch() {
	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
     }


export PS1="[\u@\h \W]\\$\\$(git_branch)"
## Loads .bashrc
if [[ -f ~/.bashrc ]] ; then
	        . ~/.bashrc
fi

# opam configuration
test -r /home/ss108/.opam/opam-init/init.sh && . /home/ss108/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
