FROM node:8
# Created by swapnil
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install 

# Bundle app source
COPY . .

EXPOSE 8090
CMD [ npm, start ]
