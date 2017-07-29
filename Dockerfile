FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

# install nodejs from apline package manager
# get latest relase from ghost.org
# unzip to /var/www
# install with development profile

RUN apk update && \
    apk add nodejs-lts nodejs-npm libgcc ca-certificates openssl && \
    wget -c -O /tmp/ghost.zip https://ghost.org/zip/ghost-latest.zip && \
    mkdir -p /var/www && \
    cd /var/www && \
    unzip /tmp/ghost.zip && \
    rm /tmp/ghost.zip && \
    /usr/bin/npm install -g knex-migrator && \
    /usr/bin/npm install pm2 -g && \
    /usr/bin/npm install --development && \
    knex-migrator init
    
EXPOSE 2368

WORKDIR /var/www

ENV NODE_ENV development

CMD pm2 start index.js --name "ghost" --no-daemon
