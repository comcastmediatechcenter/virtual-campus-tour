FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE 5678
CMD ["node", "index.js"]
