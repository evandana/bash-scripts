# Cross Browser Testing in a VM

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

## More Complex Scenarios

### Understanding VirtualBox network settings

> [virtualbox.org source](https://www.virtualbox.org/manual/ch06.html)
> 
> |             | VM ↔ Host | VM1 ↔ VM2 | VM → Internet |  VM ← Internet  |
> | ----------: | :-------: | :-------: | :-----------: | :-------------: |
> |   Host-only |     +     |     +     |       –       |        –        |
> |    Internal |     –     |     +     |       –       |        –        |
> |     Bridged |     +     |     +     |       +       |        +        |
> |         NAT |     –     |     –     |       +       | Port forwarding |
> | NAT Network |     –     |     +     |       +       | Port forwarding |

[ ] Verified [mycodingpains.com source](http://www.mycodingpains.com/how-to-make-virtualbox-guest-use-its-hosts-internet-connection-and-still-have-ssh-access-to-the-guest/)

[ ] Verified [askubuntu.com source](https://askubuntu.com/questions/363003/no-internet-connection-on-virtualbox-windows-7-as-guest-ubuntu-13-04-as-host)

[ ] Verified
> [serverfault.com source](https://serverfault.com/questions/225155/virtualbox-how-to-set-up-networking-so-both-host-and-guest-can-access-internet)
> 
> 1. Setup the virtualbox to use 2 adapters ...
> 1. Start the virtual machine and assign a static IP for the second adapter in Ubuntu (for instance 192.168.56.56). The host Windows will have 192.168.56.1 as IP for the internal network (VirtualBox Host-Only Network is the name in network connections in Windows). What this will give you is being able to access the apache server on ubuntu, from windows, by going to 192.168.56.56. Also, Ubuntu will have internet access, since the first adapter (set to NAT) will take care of that.
> 1. Now, to make the connection available both ways (accessing the windows host from the ubuntu guest) there's still one more step to be performed. Windows will automatically add the virtualbox host-only network to the list of public networks and that cannot be changed. This entails that the firewall will prevent proper access.
> 1. To overcome this and not make any security breaches in your setup ...

> [superuser.com source](https://superuser.com/questions/1217610/internet-access-in-virtual-machines-in-virtual-box)
> 
> Virtual box creates a virtual machine environment on top of your host operating system. It has several options for how to configure networking.
> 
> If you select bridged networking, then your virtual machine is effectively on the same LAN or Wi-Fi as your host with different/Unique IP. It will talk to an external DHCP server and get external information.
>
> If you select ‘shared’ networking, then your host will provide a virtual LAN for the VM to reside on, with the host providing routing and NAT services to the outside world. Your host will also provide DHCP services on the virtual LAN.
