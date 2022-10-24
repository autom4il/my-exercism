#!/usr/bin/env bash

function acronym () {

    str="$@"

    echo "$str" |sed s'/[-_*$]\+/ /g;s/ /\n/g;s/[[:lower:]]/\U&/g' |cut -c 1 |paste -s -d ""

}

function main() {

    acronym $@

}

main "$@"
