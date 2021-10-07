FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm i --production
RUN npm i mysql2
COPY . .
CMD ["npm", "start"]
