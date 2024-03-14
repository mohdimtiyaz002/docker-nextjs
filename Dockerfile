FROM node:16-alpine as build

WORKDIR /docker-nextjs

COPY package.json yarn.lock ./
RUN yarn install

COPY next.config.js ./next.config.js
COPY pages ./pages
COPY public ./public
COPY styles ./styles

EXPOSE 3001

CMD ["yarn", "dev"]



