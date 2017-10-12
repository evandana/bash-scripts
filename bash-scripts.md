# Bash Scripts

 * Search all matching folder names for files that match a pattern and output the results into a file
  
  ```bash
  cat $(find ./ -iname "fileprefix-*.extension") > ~/somefile.txt
  ```

## Read a file, replace new lines with spaces, then run it with `bash`

1. `sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' FILENAME | bash`

**Example File**

```bash
# To run this replacing new lines with spaces,
# `sed -e 's/#.*//g' NAME_OF_THIS_FILE | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' -e 's/SANDBOX/sandbox8/g' | bash`
socket_router_url=hmi-socket-router-SANDBOX.run.asv-pr.ice.predix.io
api_gateway_url=hmi-api-gateway-SANDBOX.run.asv-pr.ice.predix.io
alarm_service_url=alarms-websocket-server-SANDBOX.run.asv-pr.ice.predix.io/subscribe
HUMMUS_DEBUG_TOKEN=myToken
HUMMUS_DEBUG_TENANT_ID=myTenantGuid
node server
```
