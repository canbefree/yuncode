FROM node:23-bullseye


WORKDIR /app

RUN yarn config set registry https://registry.npmmirror.com

RUN npm config set registry https://registry.npmmirror.com
