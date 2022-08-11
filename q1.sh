#!/bin/bash

filename=$1


lineno=$(wc -l < $filename)

midline=$(( lineno/2 ))

if (( $lineno%2==0 ))
then
awk -v p="$midline" '{if(NR==p) print $0}' $filename
else
(( midline++ ))
awk -v p="$midline" '{if(NR==p) print $0}' $filename
fi











