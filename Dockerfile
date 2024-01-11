# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /nextjs-blog
COPY . .
RUN yarn install
RUN yarn build
CMD ["yarn", "start"]
EXPOSE 3000
