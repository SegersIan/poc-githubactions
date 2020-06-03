FROM node:14.4.0-alpine

RUN mkdir app
COPY ./package.json app/package.json
RUN npm install
COPY ./dist app

CMD ["node", "app/index.js"]
