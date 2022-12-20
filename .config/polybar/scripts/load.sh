#!/bin/bash

label=""

load=$(echo "r = $(awk '{ print $3 }' /proc/loadavg)/$(nproc)*100; scale=1; r/1" | bc -l)

if [[ 1 -eq "$(echo "$load > 100" | bc)" ]]; then
	pload=$(echo %{F#BC412B}%{u#BC412B}"${label} ${load}%"%{F- u-})
elif [[ 1 -eq "$(echo "$load > 90" | bc)" ]]; then
	pload=$(echo %{F#DC602E}%{u#DC602E}"${label} ${load}%"%{F- u-})
else
	pload=$(echo "${label} ${load}%")
fi

echo $pload

