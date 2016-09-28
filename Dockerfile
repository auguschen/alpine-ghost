FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk add nodejs ca-certificates openssl && wget -c -O /tmp/ghost-0.11.0.zip https://ghost.org/zip/ghost-0.11.0.zip

EXPOSE 80 443

CMD sh
