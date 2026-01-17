#!/usr/bin/env zsh

nuxmv="./nuXmv"
cmd="./timed.cmd"
read_timed="./read_timed.cmd"
go_time="./go_time.cmd"

if (( $# < 1 )); then
    print -u2 "Usage: $0 <model.smv>"
    exit 1
fi

if [[ ! -f $1 ]]; then
    print -u2 "Error: file '$1' not found"
    exit 1
fi

if [[ $1 =~ _timed ]]; then
    if [[ $2 = "-v" ]]; then
        "$nuxmv" -source "$cmd" -time "$1"
    else
        ("$nuxmv" -source "$cmd" -time "$1") | grep -v -e "\*\*\*" -e "no proof or counterexample" -e "^$"
    fi
else
    "$nuxmv" "$1"
fi
