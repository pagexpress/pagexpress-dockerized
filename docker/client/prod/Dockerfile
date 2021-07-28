FROM mhart/alpine-node:14
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY px/packages/pagexpress/package*.json .
RUN npm install --quiet
COPY px/packages/pagexpress .
EXPOSE 3100
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3100
CMD ["npm", "run", "generate:start"]
