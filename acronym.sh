#!/usr/bin/env bash

echo "$@" |sed s'/[-_*$]\+/ /g;s/ /\n/g;s/[[:lower:]]/\U&/g' |cut -c 1 |paste -s -d ""
