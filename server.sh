#!/bin/sh
set -e

if [ "${DOMAIN}" == "**None**" ]; then
    echo "Please set DOMAIN"
    exit 1
fi

if [ ! -f "/app" ]; then
    echo "mdblog is not build,will be build it now..."
    /bin/sh /build.sh
fi
