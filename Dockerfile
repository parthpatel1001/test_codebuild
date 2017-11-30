FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Copy package configs
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
