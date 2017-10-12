# Local Server

## Serve Local Directory to `http://localhost`

1. Navigate to the root directory 
    1. `cd PATH_TO_DIRECTORY`
1. Run the Python server 
    1. `python -m SimpleHTTPServer`
1. Navigate to `localhost` or `localhost/PATH_TO_FILE`
    1. Note that the browser will only be able to load files and references to files in the served directory or descendents thereof
    1. Example: `http://localhost:8000/tests/component-test.html`
    
