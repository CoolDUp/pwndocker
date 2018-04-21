#!/bin/bash
echo statrt install pwndocker...
echo 
docker-compose build
echo build finished
dir=$(pwd)
sed "1a cd $dir" pwntools.sh > /usr/bin/pwntools
chmod +x /usr/bin/pwntools
echo 
echo use cmd [pwntools] into work
echo
echo all completed


