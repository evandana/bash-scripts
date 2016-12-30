# shortcuts

https://github.com/fliptheweb/bash-shortcuts-cheat-sheet

Note: follow the tesps to set "Option as Meta key"

# bash-scripts

*Search all matching folder names for files that match a pattern and output the results into a file*

```bash
cat $(find ./ -iname "templates-*.mustache") > ~/Downloads/components.txt
```


# ~/.bash_profile

```bash
  #######################
  #terminal enhancemenets
  #######################

  #export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
  export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\W\[\033[m\]\$ "
  export CLICOLOR=1
  #export LSCOLORS=GxCxDxBxegedabagaced
  export LSCOLORS=gxcxDxbxegedabagaced

  ## Use long listing format and show hidden files##
  alias ll='ls -laGFh'
  alias ls='ls -GFh'
```
