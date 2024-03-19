#!/bin/sh

# Generate config.json
echo "{
  \"apiUrl\": \"$API_URL\",
  \"environment\": \"$ENV\"
}" > /usr/share/nginx/html/config.json

# Substitute environment variables in Nginx configuration
envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

# Start Nginx
nginx -g 'daemon off;'