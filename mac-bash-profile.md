# Bash Profile

## File Location

`~/.bash_profile`

## Sample File Contents

```bash
#!/bin/bash

#######################
# Java and ThingWorx
#######################

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#default
export JAVA_HOME=$JAVA_8_HOME

export CATALINA_HOME=/Applications/tomcat
export JRE_HOME=$JAVA_HOME/jre


#######################
# Key Repeat Speed Adjustments
#######################

# Note: this enables the speed adjustments in terminal
#  Terminal key repeat is not possible with the typical settings dialogs

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

######################
# NVM
######################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#######################
# Proxy

export ALL_PROXY=http://PROXY-SITE:80
export HTTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export FTP_PROXY=$ALL_PROXY
export RSYNC_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export https_proxy=$ALL_PROXY
export ftp_proxy=$ALL_PROXY
export rsync_proxy=$ALL_PROXY
export no_proxy=$NO_PROXY

export NO_PROXY=localhost,.local,127.0.0.1,10.0.2.

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


######################
# certificate resolution
######################
export NODE_TLS_REJECT_UNAUTHORIZED=0

```
