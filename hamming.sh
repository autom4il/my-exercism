#!/usr/bin/env bash

: '
    Author: autom4il
    Name: hamming.sh
'

function check_len_string () {

str1=$1
str2=$2

if ! [[ ${#str1} == ${#str2} ]]
then
    echo "Input strings must be of equal length"
    exit 1
fi

}

function hamming_distance () {

x=0
counter=0

# changed $(echo -n $str1 |wc -c) to ${#str1}

while [[ $x -lt ${#str1} ]]
  do
    x_char=${str1:$x:1}
    y_char=${str2:$x:1}

    if ! [[ $x_char == "$y_char" ]]
    then
      counter=$(( $counter + 1 ))
    fi
    x=$(( $x + 1 ))
done
echo $counter 

}

function main () {

check_len_string "$1" "$2"
hamming_distance "$1" "$2"

}

if ! [[ "$#" -eq 2 ]]
then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
else
    main "$@"
fi
