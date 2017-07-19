#!/bin/bash

for d in $(find $1 -maxdepth 1 -type d)
do
  echo $d
  git -C $d pull
done
