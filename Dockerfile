FROM node:16-alpine3.16

WORKDIR /app
COPY package*.json ./

COPY . .
EXPOSE 8080

CMD ["yarn", "serve"]