# SauceLabs Test Setup

1. Setup a SauceLabs account and get the credentials
1. Install SauceConnect
1. Start SauceConnect
1. Update your wct.conf-special.json file
1. Run the tests
1. Fix tests broken in browsers not on your local machine


## Setup a SauceLabs Account and Get the Credentials

1. https://saucelabs.com
1. Note the username (_not the same as the email!_)
1. Note the Access Key (available under User Settings > Access Key)


## Install SauceConnect

1. Download [SauceConnect](https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy)
1. Extract that folder to reveal its contents
    ```bash
    ./sc-4.4.9-osx/.DS_Store
    ./sc-4.4.9-osx/bin/sc
    ./sc-4.4.9-osx/config_examples/.DS_Store
    ./sc-4.4.9-osx/config_examples/systemd/README.md
    ./sc-4.4.9-osx/config_examples/systemd/sc.service
    ./sc-4.4.9-osx/config_examples/systemd/sc@.service
    ./sc-4.4.9-osx/config_examples/upstart/README.md
    ./sc-4.4.9-osx/config_examples/upstart/sc.conf
    ./sc-4.4.9-osx/config_examples/upstart/sc_worker.conf
    ./sc-4.4.9-osx/COPYRIGHT.md
    ./sc-4.4.9-osx/license.html
    ```
1. Copy the bin to your local bin: `sudo cp ./sc-4.4.9-osx/bin/sc /usr/local/bin/sc`
1. Follow the install directions in `./sc-4.4.9-osx/config_examples/systemd/README.md` to set up the `systemd` service
1. Follow the install directions in `./sc-4.4.9-osx/config_examples/upstart/README.md` to set up the SauceConnect `upstart` services


## Start SauceConnect

1. Install from the links and then follow the directions in the `README.md`s (copying files)
2. Run below command

Note: 

- _username_ is NOT the email address
- _tunnel-name_ should have no spaces and should be kebab-case

`bin/sc -u username -k 758f7c99-8651-.. -i tunnel-name-in-kebab-case`


## Run the Tests

1. Run `wct --configFile wct.conf-special.json`
     - Note: `--configFile` is camelCase, not kebab-case as with all the other flags. _::facepalm::_


## Fix Tests Broken In Browsers Not On Your Local Machine

Read the instructions on [Cross Browser Testing](cross-browser-testing.md)

## Sample `wct.conf-special.json` file

```json
{
  "verbose": false,
  "plugins": {
    "local": {
      "browsers": [
        "chrome"
      ]
   },
    "sauce": {
      "username": "REPLACE_WITH_USERNAME",
      "accessKey": "758f7c99-8651-...",
      "name": "new-test",
      "tunnelId": "tunnel-name-in-kebab-case",
      "disabled": false,
      "browsers": [
        {
          "browserName": "microsoftedge",
          "platform": "Windows 10",
          "version": ""
        },
        {
          "browserName": "internet explorer",
          "platform": "Windows 8.1",
          "version": "11"
        },
        {
          "browserName": "safari",
          "platform": "OS X 10.11",
          "version": "10"
        }
      ]
    }
  },
  "suites": [
    "test/your-component-test.html"
  ]
}
```
