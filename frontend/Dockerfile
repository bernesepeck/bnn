# Stage 1: Build the application
FROM node:21 as build-stage

# Set the working directory
WORKDIR /app

# Copy project config fles
COPY package*.json ./
COPY tsconfig.json ./
COPY .parcelrc ./

# Install dependencies
RUN npm install

# Copy project files
COPY src ./src

# Build the application
RUN npm run build

# Stage 2: Serve the application with Nginx
FROM nginx:alpine

# Install curl and jq for scripting
RUN apk add --no-cache jq curl

# Create a directory for the custom Nginx configuration and the script
RUN mkdir -p /etc/nginx/templates
WORKDIR /etc/nginx/templates

# Copy built assets from the build-stage to the Nginx server
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add custom Nginx configuration template
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use environment variables to configure Nginx at runtime
ENV PORT=8080
ENV PARCEL_API_URL=""

# Set the entrypoint script to run on container start
ENTRYPOINT ["/entrypoint.sh"]
