FROM node:12

WORKDIR /use/src/app

COPY . .

RUN npm install -g @ionic/cli@6.12.3

EXPOSE 8100

CMD ["ionic", "serve"]