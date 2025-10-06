# -----------------------------------------
# Use an official Node.js 16 base image
# -----------------------------------------
FROM node:16

# -----------------------------------------
# Set the working directory inside the container
# All commands that follow will run from this folder
# -----------------------------------------
WORKDIR /app

# -----------------------------------------
# Copy package.json (and package-lock.json if it exists)
# into the working directory
# -----------------------------------------
COPY package*.json ./

# -----------------------------------------
# Install dependencies defined in package.json
# -----------------------------------------
RUN npm install

# -----------------------------------------
# Copy the rest of the application files
# into the container’s working directory
# -----------------------------------------
COPY . .

# -----------------------------------------
# Expose port 3000 so the app can be accessed externally
# -----------------------------------------
EXPOSE 3000

# -----------------------------------------
# Start the application using npm
# -----------------------------------------
CMD ["npm", "start"]