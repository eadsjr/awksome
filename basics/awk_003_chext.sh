#!/bin/bash
# displays what commands to run to change all local files with SOURCE extensions
# ./awk_003_chext.sh txt in
SOURCE=$1
TARGET=$2
ls | awk '/.*\.txt/ {split($0,a,"\.'$SOURCE'"); printf "mv %s %s.'$TARGET'\n", $0, a[1];}'
