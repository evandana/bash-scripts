# WCT

## Bigger Preview Window

- Modify L#882 and L#892 in (local) `node_modules/web-component-tester/browser.js`

e.g. 

```
style.textContent = 'html, body {' +
                    '  position: relative;' +
                    '  height: 100%;' +
                    '  width:  100%;' +
                    '  margin:  0;' +
                    '  padding:  0;' +
                    '  min-width: 900px;' +
                    '}' +
                    '#mocha, #subsuites {' +
                    '  height: 100%;' +
                    '  position: absolute;' +
                    '  top: 0;' +
                    '}' +
                    '#mocha {' +
                    '  box-sizing: border-box;' +
                    '  margin: 0 !important;' +
                    '  overflow-y: auto;' +
                    '  padding: 0;' +
                    '  right: 0;' +
                    '  left: 1300px;' +
                    '}' +
                    '#subsuites {' +
                    '  -ms-flex-direction: column;' +
                    '  -webkit-flex-direction: column;' +
                    '  display: -ms-flexbox;' +
                    '  display: -webkit-flex;' +
                    '  display: flex;' +
                    '  flex-direction: column;' +
                    '  left: 0;' +
                    '  padding: 0;' +
                    '  width: 1300px;' +
                    '}' +
                    '#subsuites .subsuite {' +
                    '  border: 0;' +
                    '  width: 100%;' +
                    '  height: 100%;' +
                    '}' +
                    '#mocha .test.pass .duration {' +
                    '  color: #555 !important;' +
                    '}';
```
