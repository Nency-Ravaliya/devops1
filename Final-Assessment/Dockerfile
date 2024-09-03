# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
WORKDIR /usr/src/app

# Install app dependencies.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
COPY package*.json ./
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose port 3000.
EXPOSE 3000

# Run the app.
CMD [ "npm", "start" ]
