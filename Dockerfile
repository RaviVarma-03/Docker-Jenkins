FROM node:20-alpine

WORKDIR /ravi/app/

COPY package.json .
COPY ravi.js .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "ravi.js"]