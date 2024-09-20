FROM node:latest

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /Volumes/Others/Kubernetes/Applications/app1

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]