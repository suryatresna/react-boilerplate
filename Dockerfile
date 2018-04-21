FROM node:8.9.0

RUN mkdir -p /www/app
RUN npm i -g cross-env

WORKDIR /www/app

COPY package.json /www/app
ADD internals /www/app/internals

RUN npm run setup