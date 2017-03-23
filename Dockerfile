FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

# install nodejs from apline package manager
# get latest relase from ghost.org
# unzip to /var/www
# install with production profile
# install qiniu plugin

RUN apk update && \
    apk add nodejs-lts libgcc ca-certificates openssl && \
    wget -c -O /tmp/ghost.zip https://ghost.org/zip/ghost-latest.zip && \
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
