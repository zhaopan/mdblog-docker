FROM golang:1.14-alpine
MAINTAINER zhaopan <zhaopan@github.com>

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/broqiang/mdblog.git /app

ADD *.sh /

ENV DOMAIN **None**
ENV HTTP_ADDR :80
ENV HTTPS_ADDR :443

EXPOSE 8091
EXPOSE 443

CMD /bin/sh
