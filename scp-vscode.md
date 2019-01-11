# SCP with VSCode

Create a local repository, sync it to remote automatically on save

1. Install VSCode plugin: [SFTP](https://marketplace.visualstudio.com/items?itemName=liximomo.sftp) and Reload VSCode
1. In VSCode, use the commanp prompt (`Command` + `p`) and enter `SFTP config`
1. Replace the auto-generated config with the following:
   ```
   {
    "name": "scp-vscode",
    "protocol": "sftp",
    "host": "10.123.456.78",
    "port": 22,
    "agent": "/../com.apple.launchd.ABC123/Listeners",
    "username": "someuser",
    "remotePath": "/something",
    "uploadOnSave": true,
    "privateKeyPath": "../../key-pair.pem",
    "watcher": {
        "files": "*",
        "autoUpload": true,
        "autoDelete": false
    }
   }
   ```
    1. Replace the "agent" value with the result from running `echo $SSH_AUTH_SOCK`
    1. Update the "host" and "privateKeyPath" as appropriate
1. In VSCode, use the commanp prompt (`Command` + `p`) and enter `SFTP sync local` or `SFTP download`
