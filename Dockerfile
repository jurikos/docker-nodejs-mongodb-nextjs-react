FROM node:alpine
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . /usr/src/app
RUN yarn build
CMD [ "yarn", "start" ]
