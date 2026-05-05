# Use official Node image
FROM node:18

# Create app directory
WORKDIR /app

# Copy files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app code
COPY . .

# Expose port
EXPOSE 9000

# Start app
CMD ["npm", "start"]
