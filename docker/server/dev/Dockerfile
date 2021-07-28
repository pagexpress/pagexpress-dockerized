FROM mhart/alpine-node:14
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY px/packages/pagexpress-server/package*.json .
RUN npm i --quiet
RUN npm i -g nodemon
COPY px/packages/pagexpress-server .
CMD ["npm", "run", "dev"]
