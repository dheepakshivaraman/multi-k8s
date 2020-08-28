# base image
FROM node:alpine

# setup app
WORKDIR '/app'
COPY ./package.json .
RUN npm install
COPY . .

# Start command
CMD ["npm", "run", "start"]
