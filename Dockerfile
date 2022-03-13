FROM node:17-slim

RUN apt-get update \
  && apt-get install -y build-essential graphicsmagick imagemagick

WORKDIR /usr/src/app

COPY --chown=node:node package.json package-lock.json ./

RUN npm ci --silent

COPY --chown=node:node . .

USER node

CMD npm run live-reload