#!/usr/bin/env bash

if [ $# -lt 2 ]; then
    echo "usage: $(basename $0) host port [port2 port3...]"
    exit 1
fi

host="$1"
ports=${@:2}

for port in ${ports[@]}
do
    exec socat TCP-LISTEN:${port},fork,reuseaddr TCP:${host}:${port} &
    echo "Relay TCP on :${port} to ${host}:${port}"
done

# block waiting
tail -f /dev/null