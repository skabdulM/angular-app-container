# Use Node.js v20 for development
FROM node:20 as dev-stage

# Set the working directory
WORKDIR /app

# Install dependencies
RUN npm install -g npm@10.7.0
RUN npm install -g @angular/cli@17.3.8

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

RUN npm install

# Copy the rest of the application code to the working directory
COPY . .
RUN git init 
# Expose port 4200
EXPOSE 4200

