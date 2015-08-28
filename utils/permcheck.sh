#!/bin/bash
#
## This script ensures that permissions for a given file match all the other files in its folder
#
targetfile=$1
targetfolder=$(dirname $targetfile)
foundperms=$(ls -l $targetfolder | grep -v $targetfile | awk 'NR > 1 {print $3 ":" $4 "\n" }' | sort | uniq );
if [ $( echo $foundperms | wc -w ) = 1 ];
then
  echo $foundperms $targetfile | awk '{print "chown " $1 " " $2 }' | sh;
else
  echo 'ERROR: mixed credential types';
fi 
