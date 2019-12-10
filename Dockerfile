FROM node:lts-alpine

ADD package.json package.json
ADD yarn.lock yarn.lock
RUN npm install -g yarn && yarn install
ADD . .

CMD ["npm","test"]
