# Bash Profile

## File Location

`~/.bash_profile`

## Sample File Contents

```bash
#!/bin/bash

#######################
# Java and ThingWorx
#######################

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home
export CATALINA_HOME=/Applications/tomcat
export JRE_HOME=$JAVA_HOME/jre


#######################
# Proxy
#######################

export ALL_PROXY=http://SOMEWEBSITE:PORT:80
export HTTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export FTP_PROXY=$ALL_PROXY
export RSYNC_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export https_proxy=$ALL_PROXY
export ftp_proxy=$ALL_PROXY
export rsync_proxy=$ALL_PROXY
export NO_PROXY='localhost,.local,127.0.0.1,10.0.2.'
export no_proxy=$NO_PROXY


#######################
# Terminal Enhancemenets
#######################

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\W\[\033[m\]\$ "
export CLICOLOR=1
#export LSCOLORS=GxCxDxBxegedabagaced
export LSCOLORS=gxcxDxbxegedabagaced

## Use long listing format and show hidden files##
alias ll='ls -laGFh'
alias ls='ls -GFh'


#######################
# Git Auto-Completion
#######################

# IMPORTANT: download and save https://github.com/git/git/blob/master/contrib/completion/git-completion.bash as ~/.git-completion.bash

source ~/.git-completion.bash

#######################
# Git Aliases
#######################

alias gb="git branch"
alias gpl="git pull"
alias gps="git push"
alias gc="git commit"
alias gs="git status"
alias ga="git add"

#######################
# Docker Version Manager
#######################

[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh
[[ -r $DVM_DIR/bash_completion ]] && . $DVM_DIR/bash_completion


#######################
# VS Code
#######################
# open file with VS Code when typing `vscode FILENAME` in terminal
# open new terminal window for this to take effect
vscode () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
