# Turning On/Off Proxies from Bash #

These files can be really useful for turning on and off the proxies as you move from the network to outside networks at home, etc.

### Contents

* [Bash Scripts](#bash-scripts-to-run)
* [Git Aliases to Optimize Proxying](#git-aliases)

## Bash Scripts to Run

### Turn On Proxies

`turn-on-proxies.sh`

```bash

# call <script-name> on|off

# Set Proxy
function on() {
    proxy="http://proxy-server.com:80"
    export {http,https,ftp,yarn,socks,yarn_https}_proxy=proxy
    export {HTTP,HTTPS,FTP}_PROXY=proxy
    export proxy_url=proxy
    export yarn_strict_ssl=proxy
    #printenv
}

# Unset Proxy
function off() {
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset yarn_proxy
    unset socks_proxy
    unset yarn_https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset FTP_PROXY
    unset proxy_url
    unset yarn_strict_ssl
    #printenv
}


# Check if the function exists (bash specific)
if declare -f "$1" > /dev/null
then
  # call arguments verbatim
  "$@"
else
  # Show a helpful error
  echo "'$1' is not a known function name" >&2
  exit 1
fi


echo "http_proxy: '$http_proxy'"

# unset ALL_PROXY
# unset FTP_PROXY
# unset RSYNC_PROXY
# unset HTTP_PROXY
# unset HTTPS_PROXY
# unset http_proxy
# unset https_proxy
# unset ftp_proxy
# unset rsync_proxy
# unset NO_PROXY
# npm config delete https-proxy
# npm config delete http-proxy
# npm config delete proxy

# . ~/.bashrc
# source ~/.bashrc

```

**When you run these, you *must* run them in the current shell environment, and therefore have to preface running these scripts with the `.` command**

ex) `$ . ~/turn-on-proxies.sh`

## Git Aliases

If you want to take it to the next level, alias these guys in your `.bashrc`:

```bash
alias proxon=". [path-to-]/turn-on-proxies.sh"
alias proxoff=". [path-to-]/turn-off-proxies.sh"
```
