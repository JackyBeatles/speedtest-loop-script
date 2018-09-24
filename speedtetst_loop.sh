#!/bin/bash
filename='ip.txt'

#echo Start
while read p; do 
    python $PWD/speedtest-cli --server $p | grep 'Hosted by' 
    echo "==========================================================================="
done < $filename