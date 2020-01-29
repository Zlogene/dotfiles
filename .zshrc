HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -U compinit promptinit
compinit
promptinit

prompt gentoo

zstyle ':completion:*' menu select rehash true

unsetopt nomatch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

bindkey '^[[Z' reverse-menu-complete

setopt inc_append_history
setopt share_history

typeset -gA ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
ZSH_HIGHLIGHT_STYLES[default]="fg=fg,bold"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,bold"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[alias]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[function]="fg=green"
ZSH_HIGHLIGHT_STYLES[command]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=green,bold,underline"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[path]="fg=fg,bold,underline"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[rc-quote]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[assign]="fg=cyan,bold"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

cpn() {

ct=$(basename $(dirname $(pwd)))
pn=$(basename $(pwd))

echo ${ct}/${pn}

}

. /usr/share/zsh/site-functions/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
