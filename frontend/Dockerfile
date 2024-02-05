# Stage 1: Build the application
FROM node:21 as build-stage

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

COPY tsconfig.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY src ./src

# Build the application
RUN npm run build

# Stage 2: Serve the application with Nginx
FROM nginx:alpine

# Copy built assets from the build-stage to the Nginx server
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx starts automatically, so no need to specify CMD
