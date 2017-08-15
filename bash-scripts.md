# Bash Scripts

 * Search all matching folder names for files that match a pattern and output the results into a file
  
  ```bash
  cat $(find ./ -iname "fileprefix-*.extension") > ~/somefile.txt
  ```
