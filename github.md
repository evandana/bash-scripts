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

### Remove Local Branches That No Longer Have Remotes

```bash
# list all branches
git branch -a

# list branches (search for `gone` for those without remotes)
git branch -vv

# remove all branches with `gone`
git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
```
