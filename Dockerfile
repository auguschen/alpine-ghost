FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

# install nodejs from apline package manager
# get latest relase from ghost.org
# unzip to /var/www
# install with production profile
# install qiniu plugin

RUN apk update && \
    apk add nodejs-lts nodejs-npm libgcc ca-certificates openssl && \
    wget -c -O /tmp/ghost.zip https://ghost.org/zip/ghost-latest.zip && \
    mkdir -p /var/www && \
    cd /var/www && \
    unzip /tmp/ghost.zip && \
    cp config.example.js config.js && \
    rm /tmp/ghost.zip && \
    /usr/bin/npm install pm2 -g && \
    /usr/bin/npm install --production && \
    /usr/bin/npm install qiniu && \
    /usr/bin/npm install ghost-qn-store && \
    mkdir -p content/storage && \
    cp -r node_modules/ghost-qn-store content/storage/qn-store

EXPOSE 2368

WORKDIR /var/www

ENV NODE_ENV production

CMD pm2 start index.js --name "ghost" --no-daemon
