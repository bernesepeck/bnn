# Development Setup

## Environment Setup

- **Copy the environment file and adjust the values**: Before starting your services, copy the provided example environment file to `.env`. It's crucial to review and adjust the environment variable values to match your development environment.
  ```bash
  cp env.dist .env
  ```

- **Start the services using Docker Compose**: After setting up your environment variables, you can start all required services using Docker Compose. This command initializes and runs all the containers specified in your `docker-compose.yml` file.
  ```bash
  docker compose up
  ```

## Backup Directus Environment

- **Backup the Directus database and files**: This script  backs up both the Directus database and the associated files. This way you can maintain the DB state in the repo.
```bash
./backup-directus-environment.sh
```

## Restore Directus Environment

- **Restore the Directus database and files from the repository**: If you need to revert your Directus environment to a previous state, or update your DB after a colleague made changes.
```bash
./restore-directus-environment.sh
```

## Create snapshot of database schema
```bash
docker-compose exec directus npx directus schema snapshot ./snapshots/snapshot-latest.yaml
```

## Fix Image Permissions

This corrects permissions issues locally. THese often occure if the host permissions overwrite the docker permissions in mounted volumes.
```bash
docker compose exec -u root directus chown -R node:node /directus/database /directus/extensions /directus/uploads
```

## Backup Production Database

Create dump of prod DB.
```bash
export DB_PASSWORD='YourPasswordHere'
pg_dump "sslmode=disable host=34.65.121.69 dbname=directus user=directus password=$DB_PASSWORD" --no-acl --no-owner -f backend/directus_db_prod.sql
```

## Drop all connections to staging db
```bash
psql "sslmode=disable host=34.65.121.69 dbname=directus-staging user=directus-staging password=$DB_PASSWORD"  -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'directus-staging' AND pid <> pg_backend_pid();"
```

## Drop Staging Database

**Remove the existing staging database**: This operation deletes the current staging database. It's a critical action and should be performed with caution, ensuring that a backup exists before proceeding.
```bash
export DB_PASSWORD='YourPasswordHere'
psql "sslmode=disable host=34.65.121.69 dbname=postgres user=directus-staging password=$DB_PASSWORD" -c 'DROP DATABASE IF EXISTS "directus-staging";'
```

## Re-create Staging Database

After Dropping the DB, create a fresh one.
```bash
psql "sslmode=disable host=34.65.121.69 dbname=postgres user=directus-staging password=$DB_PASSWORD" -c 'CREATE DATABASE "directus-staging";'
```

## Restore Staging Database from prod backup

Ensure the database is created before attempting a restore.
```bash
cat backend/directus_db_prod.sql | psql "sslmode=disable host=34.65.121.69 dbname=directus-staging user=directus-staging password=$DB_PASSWORD"
```
