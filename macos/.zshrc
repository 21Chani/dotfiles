
export PATH="$PATH:/Users/chani/.foundry/bin"

export PATH="$PATH:/Users/chani/.foundry/bin"

export GITUSER="21Chani"
export REPOS="$HOME/repos"
export GITREPOS="$REPOS/github.com"
export USERREPOS="$GITREPOS/$GITUSER"
export DOTFILES="$USERREPOS/dotfiles"

mkcdir () {
	mkdir "$1" &&
	   cd "$1"
}

autoload -Uz vcs_info
precmd() {
  vcs_info
}

zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:*' enable git

setopt PROMPT_SUBST
PROMPT='$'\n'%B%K{cyan} %n%f'@'%1~ %K{blue}%F{cyan}%F{reset} ${vcs_info_msg_0_} %K{reset}%F{blue} '

