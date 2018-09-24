#!/bin/bash
filename='ip.txt'

#echo Start
while read IP; do
    python $PWD/speedtest-cli --server $IP | grep 'Hosted by'
    echo "$IP"
    echo "==========================================================================="
done < $filename