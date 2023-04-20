#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "usage: $(basename $0) host port"
    exit 1
fi

HOST="132.145.25.117"
PORT="443"

LISTEN_PORT=${LISTEN_PORT:-${PORT}}

echo "relay TCP/IP connections on :${LISTEN_PORT} to ${HOST}:${PORT}"
exec socat TCP-LISTEN:${LISTEN_PORT},fork,reuseaddr TCP:${HOST}:${PORT}
