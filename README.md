### Dev Setup
Make sure to adjust the env values to something sensible after you copy the example env file
```bash
# Copy env file
cp env.dist .env

# Start with docker compose
docker compose up

```

### Backup directus DB and files
```bash
./backup-directus-environment.sh
```

### Restore directus DB and files from repo
```bash
./restore-directus-environment.sh
```

### API Examples

##### Get all data on city with id=1 in german(de)
http://localhost:8055/items/city/1?deep[translations][_filter][languages_code][_eq]=de&fields=*,translations.*

##### Get all events for city with id=1 in german(de)
http://localhost:8055/items/event/1?[_filter][city][_eq]=1&fields=*,translations.*&deep[translations][_filter][languages_code][_eq]=de

### Fix image permissions
```bash
docker compose exec -u root directus chown -R node:node /directus/database /directus/extensions /directus/uploads
```