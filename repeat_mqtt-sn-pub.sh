#!/bin/bash

COUNTER=0 
while true
do
	echo ./mqtt-sn-pub -d -h 127.0.0.1 -p 2442 -t "sample/mqttsn/pub/normal" -q 0 -m "Hello World $COUNTER"
	./mqtt-sn-pub -d -h 127.0.0.1 -p 2442 -t "sample/mqttsn/pub/normal" -q 0 -m "Hello World $COUNTER"
	COUNTER=$( expr $COUNTER + 1 )
	TIME_SLEEP=2
	echo "Sleep $TIME_SLEEP seconds..."
	sleep $TIME_SLEEP
done
