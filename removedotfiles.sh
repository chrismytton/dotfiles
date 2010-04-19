#!/usr/bin/env bash

for FILE in `ls -d ~/.*`
do
  if [ -L $FILE ]; then
    echo Deleting $FILE
    rm $FILE
  fi
done