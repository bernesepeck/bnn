#!/bin/bash

# Stop Directus service
docker compose stop directus

# Drop the database if it exists and then recreate it
docker exec -i bnn-database-1 psql -U directus -d postgres -c "DROP DATABASE IF EXISTS directus;"
docker exec -i bnn-database-1 psql -U directus -d postgres -c "CREATE DATABASE directus;"

# Restore the database from the dump
cat backend/directus_db.sql | docker exec -i bnn-database-1 psql -U directus -d directus

# Remove all files in backend/uploads (ensure safety before running this)
rm -rf backend/uploads/*

# Restore uploads from the zip file
unzip backend/uploads.zip -d backend/uploads

# Restart Directus service
docker compose start directus

# Fixing permissions might be necessary after restore, uncomment the following line if needed
# docker compose exec -u root directus chown -R node:node /directus/database /directus/extensions /directus/uploads

echo "Restore process completed."
