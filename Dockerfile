FROM node:10-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./

RUN yarn

COPY . /usr/src/app
RUN yarn build
CMD [ "yarn", "start" ]
