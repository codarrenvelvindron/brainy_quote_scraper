#!/usr/bin/env bash
rm -rf formatted.txt
while read line; do
  echo $line | sed 's/\(.*\) - /\1\n/' | awk '{$1=$1}1' | awk '{print "\""$0"\""}' >> formatted.txt
done <excess_removed.txt
rm -rf excess_removed.txt
