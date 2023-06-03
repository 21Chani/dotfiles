# ~/.bashrc: executed by bash(1) for non-login shells.

# ------------------------------ FUNCTIONS ------------------------------

mkcdir () {
  mkdir "$1" &&
     cd "$1"
}

# ------------------------ ENVIRONMENT VARIABLES ------------------------

# --- USER UTILITIES 
export GITUSER="21Chani"
export REPOS="$HOME/repos"
export GHREPOS="$REPOS/github.com"
export USERREPOS="$GHREPOS/$GITUSER"
export DOTFILES="$USERREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts/bin"

# --- JAVA
export JAVA_HOME="$HOME/.jdks/temurin-17.0.6"

# --- GO ENV
export GOROOT="/usr/local/go"
export GOPRIVATE="$GHREPOS/$GITUSER/*"
export GOPATH="$HOME/.local/share/go"
export GOBIN="$HOME/.local/bin"

# --- PATH
export PATH="$PATH:$SCRIPTS"
export PATH=$PATH:/home/chani/.spicetify:$JAVA_HOME/bin:/usr/local/go/bin
. "$HOME/.cargo/env"

# ------------------------------- CD PATH -------------------------------

export CDPATH=".:$USERREPOS:$GHREPOS:$REPOS:/media/$USER:$HOME"

# --------------------------------- PS1 ---------------------------------
FMT_BOLD="\e[1m"
FMT_RESET="\e[0m"
FMT_UNBOLD="\e[21m"
FG_BLACK="\e[30m"
FG_BLUE="\e[34m"
FG_CYAN="\e[36m"
FG_GREEN="\e[32m"
FG_MAGENTA="\e[35m"
FG_RED="\e[31m"
FG_WHITE="\e[97m"
BG_BLUE="\e[44m"
BG_GREEN="\e[42m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1

export PS1=\
"\n\[${BG_GREEN}\] \[${FG_RED}\] \[${FG_BLACK}\]◆ \u \[${FG_GREEN}${BG_BLUE}\] "\
"\[${FG_BLACK}\]\W \[${FMT_RESET}${FG_BLUE}\]"\
'$(__git_ps1 "\[${BG_MAGENTA}\] \[${FG_WHITE}\] %s \[${FMT_RESET}${FG_MAGENTA}\]")'\
"\[${BG_CYAN}\] \[${FG_WHITE}\]🕚\t \[${FMT_RESET}${FG_CYAN}\]"\
"\n \[${FG_GREEN}\]╰ \[${FG_CYAN}\]\$ \[${FMT_RESET}\]"

# -------------------------- OS DEFAULT CONFIG --------------------------

source $DOTFILES/ubuntu/default_config.sh


