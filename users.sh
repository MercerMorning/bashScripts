#!/bin/bash
file=${1}
#echo $file
IFS=$';'
for user in $(cat $file)
do
IFS=' ' read -r -a users <<< "$user"
useradd "${users[0]}" -G "${users[1]}" -d "${users[2]}" -p "${users[3]}"
done

