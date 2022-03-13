FROM node:17-slim

RUN apt-get update \
  && apt-get install -y build-essential graphicsmagick imagemagick

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm ci --silent

COPY . .

USER node

CMD npm run live-reload