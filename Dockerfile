FROM node:8

ADD package.json /tmp/package.json
RUN cd /tmp && npm install && npm run rebuild
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

WORKDIR /opt/app
ADD . /opt/app
