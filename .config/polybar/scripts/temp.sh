#!/bin/sh

temp=$(sensors coretemp-isa-0000 | grep "Package id 0" | sed 's/(.*)//;s/°C.*//;s/.*+//')

if [ 1 -eq "$(echo "$temp > 85" | bc)" ]; then
	ptemp=$(echo %{F#BC412B}%{u#BC412B} CPU "$temp"°C%{F- u-})
elif [ 1 -eq "$(echo "$temp > 75" | bc)" ]; then
	ptemp=$(echo %{F#DC602E}%{u#DC602E} CPU "$temp"°C%{F- u-})
else
	ptemp=$(echo  CPU "$temp"°C)
fi

temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

if [ 1 -eq "$(echo "$temp > 85" | bc)" ]; then
	echo %{F#BC412B}%{u#BC412B}"$ptemp"  GPU "$temp"°C%{F- u-}
elif [ 1 -eq "$(echo "$temp > 75" | bc)" ]; then
	echo %{F#DC602E}%{u#DC602E}"$ptemp"  GPU "$temp"°C%{F- u-}
else
	echo "$ptemp"  GPU "$temp"°C
fi
