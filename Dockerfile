FROM cimg/node:lts

USER root

LABEL author="Mauricio Benitez"

ARG WORKING_DIRECTORY=/usr/src/app

RUN mkdir -p $WORKING_DIRECTORY

COPY . $WORKING_DIRECTORY

WORKDIR $WORKING_DIRECTORY

RUN npm install

ENTRYPOINT ["npm", "run"]