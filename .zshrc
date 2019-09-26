# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ahj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#setopt correctall

autoload -U promptinit
promptinit
prompt gentoo

alias ls='ls --color=auto'

export PATH=$PATH:/home/ahj/bin
export LESS="$LESS -j.5"
