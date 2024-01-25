# Use the official Node.js image as the base image
FROM node:21-alpine3.18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the app source code to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Start the application
CMD ["npm", "--", "run", "start"]