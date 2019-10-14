HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
export MOZ_ENABLE_WAYLAND=1

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
setopt HIST_IGNORE_SPACE

alias crop='cut -c-$COLUMNS'
alias ffmpeg='ffmpeg -hide_banner'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias rm='rm -i'

alias ee='sudo emerge --ask'
alias ei='eix --installed --selected --compact'
alias es='emerge --search'
alias eu='sudo emerge --sync && sudo emerge --update --deep --newuse --with-bdeps=y --binpkg-respect-use=y --ask @world'
alias penv='sudo vim /etc/portage/package.env/custom'
alias pkey='sudo vim /etc/portage/package.accept_keywords/custom'
alias pmake='sudo vim /etc/portage/make.conf'
alias puse='sudo vim /etc/portage/package.use/custom'
function eb() { equery which --ebuild "$1" | less }
function ebm() { equery which --include-masked --ebuild "$1" | less }
