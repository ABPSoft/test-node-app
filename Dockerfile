FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json server.js ./
RUN npm install
EXPOSE 8080
CMD ["node", "server.js"]