#!/bin/sh

label=""

temp=$(sensors coretemp-isa-0000 | grep "Package id 0" | sed 's/(.*)//;s/°C.*//;s/.*+//')

if [ 1 -eq "$(echo "$temp > 85" | bc)" ]; then
	ptemp=$(echo %{F#BC412B}%{u#BC412B}${label} "$temp"°C%{F- u-})
elif [ 1 -eq "$(echo "$temp > 75" | bc)" ]; then
	ptemp=$(echo %{F#DC602E}%{u#DC602E}${label} "$temp"°C%{F- u-})
else
	ptemp=$(echo ${label} "$temp"°C)
fi

echo $ptemp
