FROM node:10-alpine
WORKDIR /usr/src/app
COPY . .

RUN yarn

COPY . /usr/src/app
RUN yarn build
CMD [ "yarn", "start" ]
