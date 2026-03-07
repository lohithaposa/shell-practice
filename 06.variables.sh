#!/bin/bash

START_TIME=$(date +%s)
echo "Script executed at :$START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME)) #One brace is for mathematics exceution and othe brace is for command exceution
echo "Script exceuted in: $TOTAL_TIME"