#!/bin/bash

# Navigate to the script directory to ensure relative paths are handled correctly
# Uncomment and adjust the next line if you need to execute the script from another location
# cd /path/to/your/directus/project

# Create a full pg dump
echo "Creating full PostgreSQL dump..."
docker exec -t bnn-database-1 pg_dumpall -c -U directus > directus_db.sql

# Backup directus uploads
echo "Zipping the uploads directory..."
cd backend/uploads
zip -r ../../uploads.zip *
cd ../..

echo "Backup process completed."
