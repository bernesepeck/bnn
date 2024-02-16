#!/bin/bash

# Navigate to the script directory to ensure relative paths are handled correctly
# Uncomment and adjust the next line if you need to execute the script from another location
# cd /path/to/your/directus/project

# Create a full pg dump
echo "Creating full PostgreSQL dump..."
docker exec -t bnn-database-1 pg_dumpall -c -U directus > backend/directus_db.sql

echo "Creating Directus pg dump without ACL and owner information..."
# Create directus pg dump
docker exec -t bnn-database-1 pg_dump -U directus --no-acl --no-owner -d directus > backend/directus_db_small.sql

# Backup directus uploads
echo "Zipping the uploads directory..."
cd backend/uploads
zip -r ../uploads.zip *
cd ../..

echo "Backup process completed."
