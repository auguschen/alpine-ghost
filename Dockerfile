FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && \
    apk add nodejs-lts libgcc ca-certificates openssl && \
    wget -c -O /tmp/ghost.zip https://github.com/TryGhost/Ghost/releases/download/0.11.6/Ghost-0.11.6.zip && \
    mkdir -p /var/www && \
    cd /var/www && \
    unzip /tmp/ghost.zip && \
    cp config.example.js config.js && \
    rm /tmp/ghost.zip && \
    /usr/bin/npm install --production && \
    /usr/bin/npm install qiniu

EXPOSE 2368
WORKDIR /var/www
CMD /usr/bin/npm start --production
