HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
bindkey -e
zstyle :compinstall filename '/home/ahj/.zshrc'

export PATH=$PATH:/home/ahj/bin
export LESS="$LESS -j.5"

autoload -Uz compinit
autoload -U promptinit

compinit
promptinit
prompt gentoo

setopt no_clobber

alias crop='cut -c-$COLUMNS'
alias ffmpeg='ffmpeg -hide_banner'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias rm='rm -i'

alias ee='sudo emerge --ask'
alias es='emerge --search'
alias eu='sudo emerge --update --deep --newuse --with-bdeps=y --binpkg-respect-use=y --ask @world'
function eb() { equery which --ebuild "$1" | less }
function ebm() { equery which --include-masked --ebuild "$1" | less }
