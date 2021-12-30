FROM node:16.13.1
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY px/packages/pagexpress/package.json ./
RUN npm i --quiet
COPY px/packages/pagexpress ./
EXPOSE 3000
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000
CMD ["npm", "run", "dev"]
