#!/bin/bash


cpuutil=`mpstat -o JSON 10 1 | jq '100 - .sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`

echo "CPU utilization is: $cpuutil "


