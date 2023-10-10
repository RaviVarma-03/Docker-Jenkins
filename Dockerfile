FROM node:20-alpine

WORKDIR /varma/app/

COPY package.json .
COPY varma.js .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "varma.js"]
