# Chrome Devtools Console Scripts

## Trigger a `MouseEvent`

```javascript
var domEl = $0;
var event = document.createEvent("MouseEvents");

event.initMouseEvent("mousedown", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);

domEl.dispatchEvent(event);
```
