# Github Code Snippets


## Local `.gitignore`

Update a local .gitignore file. Edits to this file will not be tracked, and therefore not create additional commits.

Path: `.git/info/exclude`

Edit file with Nano: `nano .git/info/exclude`


## Fixing Mistakes

### Remove Local Commits

```bash
git branch -D <<branch>>
git checkout origin/<<branch>> -b <<branch>>
```

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

### Remove Local Branches That No Longer Have Remotes

```bash
# list all branches
git branch -a

# list branches (search for `gone` for those without remotes)
git branch -vv

# remove all branches with `gone`
git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
```

## Setup Files

### ~/.gitconfig

```bash
[user]
	name = <<ADD GITHUB FIRST AND LAST NAME>>
	email = <<ADD GITHUB EMAIL>>
[credential]
	helper = osxkeychain
[push]
	default = simple  
[core]
	excludesfile = /Users/<<USERNAME>>/.gitignore_global
[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
	path = 
[http]
	sslVerify = false
[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
[url "https://github.com/"]
	insteadOf = git@github.com:
[url "https://"]
	insteadOf = git://
```
