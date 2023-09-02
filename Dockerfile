FROM node:18-alpine as builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY ./*.js ./

EXPOSE 3001

CMD [ "node", "index.js" ]