# Step 1: Use official Node.js image to build the React app
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Build the React app
RUN npm run build

# Step 2: Serve the build with a lightweight web server
FROM nginx:alpine

# Copy built React files to Nginx's public folder
COPY --from=build /app/build /usr/share/nginx/html

# Copy a custom nginx config (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]