# Cross Browser Testing

If you are working on a Mac, but IE11 tests fail, you'll need a quicker cycle time and more debugging tools than just guessing at a fix and re-running the tests.

> _`*`:`10.0.2.2` is the IP to use on a VirtualBox VM to provide access to its host's `localhost`. If you have a different VM, you may need to research its preferred IP for host access. You could also modify the `hosts` file on the VM which would provide a similar effect, but with a little more granular control._

## WCT Persistence Testing Using a VM

1. Run `wct -p` on Mac host
1. Open VM and point browser to the exposed URL, replacing `localhost` with `10.0.2.2`*.
  - Example: `http://localhost:8000/components/repo-name/generated-index.html?cli_browser_id=0` -> `http://10.0.2.2:8000/components/repo-name/generated-index.html?cli_browser_id=0`

## Polymer Serve Testing Using a VM

1. Run `polymer serve` on Mac host (automatically transpiles to ES5
1. Open VM and point browser to the exposed URL **plus the path for the test file**, replacing `127.0.0.1` with `10.0.2.2`*.
  - Example: `http://127.0.0.1:8001/components/repo-name/` -> `http://10.0.2.2:8001/components/repo-name/`

