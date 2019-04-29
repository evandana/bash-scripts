# NPM

## Resolving sudo issues

```bash
sudo rm -rf node_modules

# If you installed node with nvm (suggested):
sudo rm -rf ~/.npm

# If you installed node with Homebrew:
sudo rm -rf /usr/local/lib/node_modules

# Then (look ma, no sudo!):
npm install
```
