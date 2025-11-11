#Docker file for the project

#Base image
FROM node:latest

#Create app directory
WORKDIR /app

#Install app dependencies
COPY package*.json ./

#Install dependencies
RUN npm install

#Bundle app source and copy the code into the Docker image
COPY . .

#Expose port so that the application is accessible outside the container
EXPOSE 3000

#Start the application - only can have one CMD instruction
CMD ["npm", "start"]