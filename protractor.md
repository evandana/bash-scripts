# Protractor

## Run Protractor Locally and Use Chrome's DevTools for Breakpoints and Debugging

Basic process from: [Protractor's Github Debugging Page](https://github.com/angular/protractor/blob/master/docs/debugging.md)

1. **Install dependencies**

```bash
npm install -g protractor
webdriver-manager update
```

2. **Run Protractor**

```bash
npm install -g protractor
node --inspect-brk PATH_TO_NPM_PROTRACTOR PATH_TO_PROTRACTOR_CONFIG_FILE
```

e.g. 

```bash
node --inspect-brk  node_modules/protractor/bin/protractor protractor.cucumber.common.conf.js
```

3. **Open the DevTools**

The script will open a Chrome debugging browser that is auto-paused before starting the tests. 
It will also output the URL for this DevTools debugger so you can manually enter the address.

If it doesn't automaticallly open a Chrome DevTools window, navigate to [chrome://inspect/#devices] and click `inspect`.
