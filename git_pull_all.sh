#!/bin/bash

FIRST_DIR=1

for d in $(find $1 -maxdepth 1 -type d)
do
  #Do something, the directory is accessible with $d:
  if [ FIRST_DIR != 1 ]; then
    echo $d
    git -C $d pull
  fi
  FIRST_DIR=2
done
