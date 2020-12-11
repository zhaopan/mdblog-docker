#!/bin/sh
#set -e

if [ "${DOMAIN}" == "**None**" ]; then
    echo "Please set DOMAIN"
    exit 1
fi

cd /app

go env -w GO111MODULE=on \

go env -w GOPROXY=https://goproxy.cn,direct\

go get -u github.com/golang/dep/cmd/dep \

go mod tidy \

cp config/config.example.toml config/config.toml \

sed -i 's/broqiang.com/Eemor9uzSHv0ZqubFtbkfZ8uR0nezRwG/' config/config.toml \

sed -i 's/需要填入你自己的备案号/渝ICP备14008201号/' config/config.toml \

mkdir -p /app/resources/blog-docs \

go build blog.go \

echo "build ok !" \

./blog \

echo "startup ok !"
