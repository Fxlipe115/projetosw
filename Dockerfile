FROM node:lts-alpine3.15

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
USER root
WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY --chown=root:root . .

EXPOSE 8000

CMD [ "npm", "run", "start" ]