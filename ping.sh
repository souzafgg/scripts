#!/bin/bash
for x in $(cat hosts)
do
    if ping -q -c 1 -W 1 $x > /dev/null; then
        echo "$x is up"
    else
        echo "$x is down"
    fi
done
