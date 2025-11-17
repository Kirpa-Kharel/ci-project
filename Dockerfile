# Use the official Node.js 16 image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your project files
COPY . .

# Expose port 8080 so we can access the app
EXPOSE 8080

# Run your app
CMD ["node", "server.js"]
