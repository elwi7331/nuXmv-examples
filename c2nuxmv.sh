#!/usr/bin/env zsh

self_dir=${0:h}
source "$self_dir/scripts/config"

if (( $# < 2 )); then
    # not enough arguments
    print -u2 "Usage: $0 <program.c> <destination.smv>"
    exit 1
fi

if [[ ! -f $1 ]]; then
    # input file not found
    print -u2 "Error: file '$1' not found"
    exit 1
fi

"$python" "$c2kratos" --builtin-assert assert -o "$2".k2 "$1"
"$kratos" -trans-output_format=nuxmv -output_file="$2" "$2".k2
