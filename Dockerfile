# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files
COPY . .

# Application runs on port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
