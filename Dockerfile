FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk add nodejs-lts libgcc ca-certificates openssl && wget -c -O /tmp/ghost.zip https://ghost.org/zip/ghost-0.11.0.zip && mkdir -p /var/www && cd /var/www && unzip /tmp/ghost.zip && cp config.example.js config.js && rm /tmp/ghost.zip && /usr/bin/npm install --production

EXPOSE 2368

CMD /usr/bin/npm start --production
