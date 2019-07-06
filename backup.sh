#!/usr/bin/env bash

FILE_NAME=$1

if [ -f $FILE_NAME ] && [ ! -L $FILE_NAME ]; then
  NEW_FILE_NAME=$FILE_NAME.backup
  mv $FILE_NAME $NEW_FILE_NAME

  echo "Backed up $FILE_NAME to $NEW_FILE_NAME"
fi