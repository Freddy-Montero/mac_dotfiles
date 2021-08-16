# .bashrc

# ======================
# Init environment
# ======================
# Check for an Interactive Session
[ -z "PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Set colors for bash (pretty!!)
if [ -f ~/.bash_colors ]; then
  . ~/.bash_colors
fi

# If support 256 color terminal then DO IT...
export TERM='xterm-256color'

case $(uname -s) in
Linux|SunOS|Darkwin)
  eval `dircolors ~/.trapd00r_colors`
  ;;
esac

PS1='[\[\033[00;32m\]\u@\h\[\033[00;31m\]:$(date +%H%M) \[\033[00;35m\]\W\[\033[00m\]]\$'

# =====================
# Shell Variables
# =====================
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HOSTFILE=$HOME/.hosts    # Put a list of remote hosts in ~/.hosts
export EDITOR=vim
export GREP_COLOR="1;32"
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'
export HISTTIMEFORMAT="%F %T "
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups
export HISTIGNORE="&:bg:fg:ll:h"
export PAGER=less
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# =====================
# Config Options
# =====================
shopt -s histappend     # Append to history rather than overwrite
shopt -s cdspell        # Correct spelling in cd command
shopt -s checkwinsize
shopt -s cdable_vars
shopt -s checkhash
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob       # Necessary for programmable completion.

# ====================
# Aliases
# ====================
alias df='df -h'
alias ls='ls -pFHh'
alias ll='ls -lsh'
alias la='ls -A'
alias lt='ls -ltrhs'
alias l='ls -CFlhs'
alias ps='ps aux -o user,pid,%cpu,%mem'
alias grep='grep'
alias rsync='rsync -ravz'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias which='type -a'
alias ..='cd ..'
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias more='less'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias vi='vim'
