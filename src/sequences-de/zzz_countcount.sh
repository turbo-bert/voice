#!/bin/bash


cat /dev/null > inc_countdown.sh

gen(){
    echo "fromtext tess en \"$1\"" >> inc_countdown.sh
}

gen "timer ended"
gen "1 minute remaining"

for X in $(seq 2 91); do
    gen "$X minutes remaining"
done
