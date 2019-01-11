# Github Code Snippets


## Local `.gitignore`

Update a local .gitignore file. Edits to this file will not be tracked, and therefore not create additional commits.

Path: `.git/info/exclude`

Edit file with Nano: `nano .git/info/exclude`

### Ignore `chmod` changes

https://stackoverflow.com/questions/1580596/how-do-i-make-git-ignore-file-mode-chmod-changes

1. In `nano .git/config`, change `filemode=true` to `filemode=false`

```
[core]
  filemode = false
```


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
$ git rev-parse --abbrev-ref HEAD
develop
```


### Get Latest Commit Hash for Current Branch

```bash
git log -n 1 --pretty=format:"%H"
```

```bash
$ git log -n 1 --pretty=format:"%H"
abc123abc123abc123abc123abc123
```


### Get Latest Commit Hash for Any Branch

```bash
git log {BRANCH_NAME} -n 1 --pretty=format:"%H"
```

```bash
$ git log master -n 1 --pretty=format:"%H"
abc123abc123abc123abc123abc123
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
