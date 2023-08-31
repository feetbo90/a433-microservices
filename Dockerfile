
FROM node:18-alpine as builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY ./*.js ./

EXPOSE 3000

CMD [ "node", "index.js" ]