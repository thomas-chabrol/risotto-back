# Risotto Back : Vue3 App

This project was bootstrapped with [Create Vue App](https://vuejs.org/guide/quick-start.html).

## Exemple config to run project with Docker

### Dockerfile
```
FROM node:16-alpine3.16

WORKDIR /app
COPY package*.json ./

COPY . .
EXPOSE 8080

CMD ["yarn", "serve"]
```

### docker-compose.yml
```
risotto_back:
    build: ./risotto-back/
    container_name: risotto_back
    ports:
        - '8120:8080'
    volumes:
        - ./risotto-back:/app
```