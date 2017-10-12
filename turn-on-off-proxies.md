# Turning On/Off Proxies from Bash #

### Contents

* [Bash Scripts](#bash-scripts-to-run)
* [Git Aliases to Optimize Proxying](#git-aliases)

## Bash Scripts to Run

### Turn On Proxies

`turn-on-proxies.sh`

```bash
#!/usr/bin/env bash
http_proxy="http://SOMEPROXY.COM:80"
export http_proxy=$http_proxy
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export rsync_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export FTP_PROXY=$http_proxy
export RSYNC_PROXY=$http_proxy
git config --global http.proxy $http_proxy
git config --global https.proxy $http_proxy
npm config rm proxy
npm config set http-proxy $http_proxy
npm config set https-proxy $http_proxy
```

### Turn Off Proxies

`turn-off-proxies.sh`
```bash
#!/usr/bin/env bash
unset http_proxy
unset https_proxy
unset ftp_proxy
unset rsync_proxy
unset HTTP_PROXY
unset HTTPS_PROXY
unset FTP_PROXY
unset RSYNC_PROXY
git config --global --unset http.proxy
git config --global --unset https.proxy
npm config rm proxy
npm config rm https-proxy
```

**When you run these, you *must* run them in the current shell environment, and therefore have to preface running these scripts with the `.` command**

ex) `$ . ~/turn-on-proxies.sh`

## Git Aliases

If you want to take it to the next level, alias these guys in your `.bashrc`:

```bash
alias proxon=". [path-to-]/turn-on-proxies.sh"
alias proxoff=". [path-to-]/turn-off-proxies.sh"
```
