# Example Dockerfile for a Node.js application
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
