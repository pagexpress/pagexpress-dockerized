FROM mhart/alpine-node:14
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY px/packages/pagexpress-server/package*.json .
RUN npm install --quiet
COPY px/packages/pagexpress-server .
CMD ["npm", "start"]