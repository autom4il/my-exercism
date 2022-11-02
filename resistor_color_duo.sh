#!/usr/bin/env bash

: '
  Name: resistor_color_duo.sh
  Date: 11/02/22
  Author: autom4il
'

declare -A colors
colors=(
    ["black"]="0"
    ["brown"]="1"
    ["red"]="2"
    ["orange"]="3"
    ["yellow"]="4"
    ["green"]="5"
    ["blue"]="6"
    ["violet"]="7"
    ["grey"]="8"
    ["white"]="9"
    )

function calculate_resistance() {
    value=""
    for x in "$@"
    do
        if [[ -v colors["$x"] ]]
        then
            value+="${colors["$x"]}"
        else
            # if color not present exit with status code 1
            echo "invalid color"
            exit 1
        fi
    done
    
    #if value it's not empty and start with black
    if [[ -n "$value" ]] && [[ "${value:0:1}" == "0" ]]
    then
        # only second char string
        echo "${value:1:1}"
    else
        # just ignore the third value if present
        echo "${value:0:2}"
    fi
}

#echo "${colors["black"]}"

function main() {
    calculate_resistance "$@"
}

main "$@"
