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

# NPM tips

List globally installed NPM packages with their version numbers
```bash
npm list -g --depth=0
```

# Github Code Snippets


## Get Information


### Get Current Branch Name

```bash
git rev-parse --abbrev-ref HEAD
```

```bash
evandana@C02SGFDTG8WP:AN-alarm-data-simulator$ git rev-parse --abbrev-ref HEAD
develop
```


### Get Latest Commit Hash for Current Branch

```bash
git log -n 1 --pretty=format:"%H"
```

```bash
evandana@C02SGFDTG8WP:AN-alarm-data-simulator$ git log -n 1 --pretty=format:"%H"
140ee04cc9d8babe6d7570ca3868ab28d1763621
```


### Get Latest Commit Hash for Any Branch

```bash
git log {BRANCH_NAME} -n 1 --pretty=format:"%H"
```

```bash
evandana@C02SGFDTG8WP:AN-alarm-data-simulator$ git log master -n 1 --pretty=format:"%H"
84e79d57c5c6d3131d9ae362a1e877380f35f7d1
```


