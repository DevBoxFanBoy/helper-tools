#!/bin/bash -e

input="$1"
allLines=""
while IFS= read -r line
do
    c=($(echo "$line" | tr "," " "))
    counter=0
    for i in "${c[@]}"
    do
	if [[ $counter -eq 0 ]]; then
            #echo "$i," >> result.csv
	    allLines="$allLines$i,"
	else
            #echo "\"$i\"" >> result.csv
	    allLines="$allLines\"$i\"#"
	fi
	#let "counter=counter+1"
	counter=$(($counter + 1))
    done
done < "$input"

echo "$allLines" | tr "#" "\n" >> $2

