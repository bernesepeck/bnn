#!/bin/bash

# Required files
required_files=("directus_db.sql" "uploads.zip")
missing_files=()

# Check each file and record any that are missing
for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        missing_files+=("$file")
    fi
done

# If there are missing files, inform the user and exit the script
if [ ${#missing_files[@]} -ne 0 ]; then
    echo "Error: The following required files are missing: ${missing_files[@]}"
    exit 1
fi

# Stop Directus service
docker compose stop directus

# Drop the database if it exists and then recreate it
docker exec -i bnn-database-1 psql -U directus -d postgres -c "DROP DATABASE IF EXISTS directus;"
docker exec -i bnn-database-1 psql -U directus -d postgres -c "CREATE DATABASE directus;"

# Restore the database from the dump
cat directus_db.sql | docker exec -i bnn-database-1 psql -U directus -d directus

# Remove all files in backend/uploads (ensure safety before running this)
rm -rf backend/uploads/*

# Restore uploads from a zipped uploads folder file
unzip uploads.zip -d backend/uploads

# Restart Directus service
docker compose start directus

# Fixing permissions might be necessary after restore, uncomment the following line if needed
docker compose exec -u root directus chown -R node:node /directus/uploads

echo "Restore process completed."
