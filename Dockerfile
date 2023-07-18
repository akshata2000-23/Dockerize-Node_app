#base image
FROM node:slim

#Creatign work directory inside the image
WORKDIR /app

COPY package*.json /app/

# Install dependencies
RUN npm ci

# Copy the rest of the application files
COPY . /app

# Command to run after the container starts
CMD ["npm", "start"]
#copy contents of current directory to the /app folder
