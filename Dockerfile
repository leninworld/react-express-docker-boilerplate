FROM node:latest

WORKDIR /opt/app/

COPY package.json ./

RUN npm install -g nodemon
RUN npm install
RUN npm audit fix
RUN npm update uglifyjs-webpack-plugin

COPY . .

CMD npm start dev

EXPOSE 8080