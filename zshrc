#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias ls='ls -hGF'
alias ll='ls -hlAGF'
alias vi='vim'
alias jfs='fasd -f -e subl '
alias js='fasd -e subl '

eval "$(direnv hook $0)"

export PGDATA=/usr/local/var/postgres/data/

