FROM node:10.16.3

# RUN npm config set proxy http://10.160.3.88:8080
# RUN npm config set https-proxy http://10.160.3.88:8080
# RUN git config --global http.proxy http://10.160.3.88:8080
# RUN git config --global https.proxy http://10.160.3.88:8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY ./package.json /usr/src/app/
RUN npm install && npm cache clean --force
COPY . /usr/src/app



CMD [ "npm", "start" ]

EXPOSE 3000

