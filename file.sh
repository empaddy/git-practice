#!/bin/bash

# The first line #!/bin/bash is the shebang which tell the environment or shell type
    #Author : Utrains
    #Date : 01-Nov-2021
    
## ---------- If statement and file   -----------------

# -----  check if the file exist with the filename ------------

FILE-NAME=linux
if [ -f ${FILE-NAME} ]   
    then 
    echo "file exist"
 else 
 touch success
    echo "file success created"
fi

