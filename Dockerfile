FROM node:slim


# set directory "cd /app"
WORKDIR /app

# install npm dependencies
COPY index.js /app/index.js
COPY package.json /app/package.json
RUN npm install
EXPOSE 3000

# the program to run
ENTRYPOINT node index.js