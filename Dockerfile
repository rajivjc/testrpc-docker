FROM node:6.11.1-alpine

RUN apk update && apk upgrade

RUN chown -R node:node /usr/local/lib/node_modules
RUN chown -R node:node /usr/local/bin

USER node
RUN npm install -g ethereumjs-testrpc@3.0.3

USER root

EXPOSE 8545
ENTRYPOINT ["testrpc"]