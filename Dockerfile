# Use Node base image
FROM node:22.14.0-alpine3.21

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your code
COPY . .

# Expose port (change if your app uses another port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

