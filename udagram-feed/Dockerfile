FROM node:12

WORKDIR /usr/src/app

COPY ./www .

RUN npm ci

EXPOSE 8080

CMD ["npm", "start"]

