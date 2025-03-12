FROM node:18.0.0-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usrsrc/app

COPY . .
ENV NODE_OPTION=--openssl-legacy-provider

ARG API_KEY
ENV TMDB_KEY=${API_KEY}

RUN npm install
RUN npm run install

EXPOSE 3000

CMD [ "npm" ,"start" ]