#!/bin/bash

start_time=$(date +%s)

echo "script got executed at $start_time"

sleep 20

end_time=$(date +%s)

echo "script ended at $end_time"
total_time=$(($end_time-$start_time))

echo "script executed in $total_time seconds"