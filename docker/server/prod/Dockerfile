FROM mhart/alpine-node:16
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY px/packages/pagexpress-server/package*.json ./
RUN npm ci --quiet
COPY px/packages/pagexpress-server ./
CMD ["npm", "start"]