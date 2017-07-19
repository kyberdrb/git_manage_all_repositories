#!/bin/bash

git -C $1 add -A
git -C $1 commit -m "$2"
git -C $1 push
