FROM node:18.12.1-alpine

WORKDIR /app

COPY package.json /app

ENV NODE_ENV=production

RUN npm install

COPY . /app

VOLUME ["/app/logs"]

CMD ["node", "/app/app.js"]

EXPOSE 3000
