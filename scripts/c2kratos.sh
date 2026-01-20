#!/usr/bin/env zsh

c2kratos_dir=${0:h}
source "$c2kratos_dir/config"

if (( $# < 1 )); then
    print -u2 "Usage: $0 <program.c>"
    exit 1
fi

if [[ ! -f $1 ]]; then
    print -u2 "Error: file '$1' not found"
    exit 1
fi

"$python" "$c2kratos" --builtin-assert assert -o a.k2 "$1"
