#!/bin/bash

cat 000.in | awk '{ if ($1==2) print; }'
cat 000.in | awk '{ if ($1!=2) print; }'
