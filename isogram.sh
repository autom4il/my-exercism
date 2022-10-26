#!/usr/bin/env bash

alph=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

function is_an_isogram () {
    for i in "${alph[@]}"
    do
        test_isogram=$(echo "$1" |grep -io "$i" |wc -l)
        if [[ "$test_isogram" -gt 1 ]]
        then
            echo "false"
            exit 0
        fi
    done
    echo "true"
    exit 0
}

function main () {
    if [[ -z "$1" ]]
    then
        echo "true"
        exit 0
    else
        is_an_isogram "$@"
    fi
}

main "$@"
