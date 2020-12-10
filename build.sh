#!/bin/sh
set -e

if [ "${DOMAIN}" == "**None**" ]; then
    echo "Please set DOMAIN"
    exit 1
fi

cd /app

go get -u github.com/golang/dep/cmd/dep \

go mod tidy \

cp config/config.example.toml config/config.toml \

go build blog.go \

echo "build ok !" \

./blog \

echo "startup ok !"
