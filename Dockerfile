FROM node:lts-alpine3.14 as base
WORKDIR /usr/src/app
COPY package.json ./
ENV HOST 0.0.0.0

FROM base as development
RUN npm install
COPY . .
ENV NODE_ENV development
EXPOSE 3000
CMD [ "npm", "run", "dev" ]