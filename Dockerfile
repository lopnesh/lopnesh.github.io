FROM node:12-alpine AS builder
WORKDIR /home/docker/app
COPY ./package.json /home/docker/app
RUN yarn install
COPY . .

FROM node:12-alpine
WORKDIR /home/docker/app
COPY --from=builder /home/docker/app .
ENV HOST 0.0.0.0
<<<<<<< HEAD
CMD yarn run dev
=======
CMD yarn run dev
>>>>>>> 5a3a62aeac76f87576cefe485cd172c65548998e
