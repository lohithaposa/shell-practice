#!/bin/bash

echo "All arguments passed to the script : $@"
echo "No of variables passed to the script : $#"
echo "Present working directory : $PWD"
echo "Home directory : $HOME"
echo "process id of the current script : $$ "
sleep 10 &
echo "script name : $0"
echo "process id of recently excecuted background process: $!"
echo "who is running the script: $USER" 

cho "All arguments passed to the script : $*"