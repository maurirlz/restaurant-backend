FROM node:current-alpine

LABEL author="Mauricio Benitez"

ENV NODE_ENV="development"

EXPOSE 8000

ARG WORKING_DIRECTORY=/usr/src/app

RUN mkdir -p $WORKING_DIRECTORY

COPY . $WORKING_DIRECTORY

WORKDIR $WORKING_DIRECTORY

RUN npm install

ENTRYPOINT ["npm", "run", "start:dev"]