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

# Create a directory for the custom Nginx configuration
RUN mkdir -p /etc/nginx/templates
WORKDIR /etc/nginx/templates

# Copy built assets from the build-stage to the Nginx server
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add custom Nginx configuration template
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Use environment variables to configure Nginx at runtime
ENV PORT=8080
CMD ["/bin/sh" , "-c" , "envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
