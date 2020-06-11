FROM node:13.12.0-alpine

WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

RUN echo 200610_x0

# install app dependencies
COPY package.json .
COPY yarn.lock    .
RUN yarn install

#      source folder   WORKDIR folder
COPY   .               .

# start app
CMD yarn start
