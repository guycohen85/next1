# Use an official Node.js runtime as the base image
# FROM node:20-alpine
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire app directory into the container
COPY . .

# Build the Next.js app
#RUN npm run build

# Expose the port Next.js uses (by default, it's 3000)
EXPOSE 3000

# Set the command to run the app when the container starts
CMD ["npm", "run", "dev"]