# Use the official Node.js image as the base image
FROM node:21-alpine3.18

# Set the working directory inside the container
WORKDIR /app

# Install PM2 globally
RUN npm install -g pm2

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the app source code to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port your app will run on (usually 3000)
EXPOSE 3000

# Use PM2 to start and manage the application
CMD ["pm2-runtime", "npm", "--", "run", "start"]