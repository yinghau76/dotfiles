export PATH=~/bin:/usr/local/bin:$PATH

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

BLACK="\[\033[0;38m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
GREEN="\[\033[0;32m\]"

# two-line prompt
export PS1="
\h:\w$GREEN\$(parse_git_branch)$BLACK \u 
\$ "

# ls color
export LSCOLORS=gxfxcxdxbxegedabagacad

# Useful aliases
alias ls="ls -G"
alias l="ls -l"
alias ll="ls -al"
alias la="ll"
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ssh="ssh -X"
alias ~="cd ~"
alias ..="cd .."

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# MacPorts Installer addition on 2010-10-02_at_09:10:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

