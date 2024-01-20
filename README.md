### Dev Setup
Make sure to adjust the env values to something sensible after you copy the example env file
```bash
# Copy env file
cp env.example .env

# Star with docker compose
docker compose up

```

### Backup directus DB
```bash
# Create pg dump
docker exec -t bnn-database-1 pg_dumpall -c -U directus > directus_db.sql
```

### Restore directus DB into container
```bash
# Stop directus
docker-compose stop directus

# Restore dump
cat directus_db.sql | docker exec -i bnn-database-1 psql -U directus

# Start directus
docker-compose directus start
```
