#!/bin/bash

load=$(echo "r = $(awk '{ print $1 }' /proc/loadavg)/$(nproc)*100; scale=1; r/1" | bc -l)

if [[ 1 -eq "$(echo "$load > 100" | bc)" ]]; then
	pload=$(echo %{F#BC412B}%{u#BC412B}" CPU ${load}%"%{F- u-})
elif [[ 1 -eq "$(echo "$load > 90" | bc)" ]]; then
	pload=$(echo %{F#DC602E}%{u#DC602E}" CPU ${load}%"%{F- u-})
else
	pload=$(echo " CPU ${load}%")
fi

echo $pload

