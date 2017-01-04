# Shortcuts

 * https://github.com/fliptheweb/bash-shortcuts-cheat-sheet
   
   * E.G. clear line, jump to start of line, make the rest of the word capitalized, ...
   * Make sure to set "Option as Meta key"
      1. Open Terminal
      2. Menu Bar > Terminal > Preferences
      3. Profiles Tab
      4. Keyboard sub-tab
      5. Check the box for `Use Option as Meta key`

# Bash Scripts

 * Search all matching folder names for files that match a pattern and output the results into a file
  
  ```bash
  cat $(find ./ -iname "fileprefix-*.extension") > ~/somefile.txt
  ```


# ~/.bash_profile

```bash
#######################
#terminal enhancemenets
#######################

# rearrange the prompt info and add colors
# intentionally avoided bold font weight to increase readability with small fonts on retina screens
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\W\[\033[m\]\$ "
# add colors
export CLICOLOR=1
export LSCOLORS=gxcxDxbxegedabagaced

# Use long listing format and show hidden files
alias ll='ls -laGFh'
alias ls='ls -GFh'
```
