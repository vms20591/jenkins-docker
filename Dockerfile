FROM node:carbon

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

cmd SET DEBUG=test:* & npm start