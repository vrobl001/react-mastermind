FROM node:14.4.0-alpine3.10

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]