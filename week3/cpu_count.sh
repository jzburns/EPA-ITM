#!/bin/bash

# grep searches for the string processor in the file /proc/cpuinfo
# feed the output of grep into another command, which counts
# the number of lines
# wc -l counts the number of lines in its input

# cnt is assigned the output of grep processor /proc/cpuinfo | wc -l
cnt=`grep processor /proc/cpuinfo | wc -l`

# if cnt variable is less than or equal to 2
if [ $cnt -lt $1 ]; then

  echo "Not enough CPUS, exiting"

else
  echo "Enough CPUs"
fi
