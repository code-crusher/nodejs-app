FROM node:20-bullseye-slim

WORKDIR /usr/src/app

COPY --chown=node:node package*.json /usr/src/app/
RUN mkdir /usr/src/app/temp

RUN npm clean-install

COPY --chown=node:node . /usr/src/app/

RUN npm run build

EXPOSE 8080

USER root

CMD [ "npm", "start"]
