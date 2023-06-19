#set base image
FROM node:12

#set working directory
WORKDIR /app

#copy dependencies into container, install dependencies
COPY package*.json ./

#shell form
RUN npm install

#copy source code into container, ignoring node_modules
COPY . .

ENV PORT=8080
EXPOSE 8080

#how to run the application: serve express app (exec form)
CMD ["npm", "start"]

#image can be built using docker build -t <NAME> .