#!/bin/sh

# Generate config.json with all available backend URLs for dynamic selection
echo "{
  \"backendUrls\": \"$BACKEND_URLS\",
  \"frontendUrls\": \"$FRONTEND_URLS\",
  \"environment\": \"$ENV\"
}" > /usr/share/nginx/html/config.json

# Substitute environment variables in Nginx configuration
envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

# Start Nginx
nginx -g 'daemon off;'