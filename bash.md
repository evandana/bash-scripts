# Bash Scripts

## Read a file, replace new lines with spaces, then run it with `bash`

1. `sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' FILENAME | bash`

**Example File**

```bash
# To run this replacing new lines with spaces,
# `sed -e 's/#.*//g' NAME_OF_THIS_FILE | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' -e 's/FIND/replaced/g' | bash`
some_url=host-name-FIND.com
```
