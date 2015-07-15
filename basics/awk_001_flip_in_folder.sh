#!/bin/bash


ls folder | awk '{x=substr($1,0,4);y=substr($1,5,1);  printf("%s%s\n",y,x)}'
