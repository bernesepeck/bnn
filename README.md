<div align="center">
  <h1>BNN (Beim Namen Nennen)</h1>
</div>
<div align="center">BNN is a CMS powered by directus with a frontend using the Lit framework. The website itself is used to host information about various beimnamennennen events across many cities, The CMS allows city managers to mange their own content for each city. Github actions are used to deploy the applications to Google Cloud Run.</div>  

## Development Environment Setup

- **Copy the environment file and adjust the values**: Before starting your services, copy the provided example environment file to `.env`. It's crucial to review and adjust the environment variable values to match your development environment.
  ```bash
  cp env.dist .env
  ```

- **Start the services using Docker Compose**: After setting up your environment variables, you can start all required services using Docker Compose. This command initializes and runs all the containers specified in your `docker-compose.yml` file.
  ```bash
  docker compose up
  ```

- **Restore the Directus database and files from the backup**: To set up your local directus DB fetch a dump of staging and place it in the root with filename directus_db.sql. You can also place a zip of an uploads folder called uploads.zip if you wish to include images in the restore. The following script will drop your local db and restore it from this sql.
  ```bash
  ./restore-directus-environment.sh
  ```

## Handling directus data migrations
In order to transfer migrations from your local branch to staging and production a schema snapshot is used. This snapshot is automatically applied on startup of the application. By adding changes locally and generating a new snapshot, you can migrate changes across other environments automatically.

This snapshot file is uploaded to a google cloud storage bucket on deploy and then applied in the [docker entrypoint](backend/entrypoint.sh)

See this restack article for more info: https://www.restack.io/docs/directus-knowledge-directus-snapshot-guide

#### Create snapshot of database schema
```bash
docker-compose exec directus npx directus schema snapshot ./snapshots/snapshot-latest.yaml
```

#### Apply directus schema snapshot
```bash
docker-compose exec directus npx directus schema apply ./snapshots/snapshot-latest.yaml
```

## Useful Commands
#### Backup Directus Environment

- **Backup the Directus database and files**: This script backs up both the Directus database and the uploads.
```bash
./backup-directus-environment.sh
```

#### Fix Image Permissions

This corrects permissions issues locally. These often occure if the host permissions overwrite the docker permissions in mounted volumes.
```bash
docker compose exec -u root directus chown -R node:node /directus/database /directus/extensions /directus/uploads
```

# Database Operations
#### Backup Production Database

Create dump of prod DB.
```bash
export DB_PASSWORD='YourPasswordHere'
pg_dump "sslmode=disable host=34.65.121.69 dbname=directus user=directus password=$DB_PASSWORD" --no-acl --no-owner -f backend/directus_db_prod.sql
```

#### Drop all connections to staging db
```bash
psql "sslmode=disable host=34.65.121.69 dbname=directus-staging user=directus-staging password=$DB_PASSWORD"  -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'directus-staging' AND pid <> pg_backend_pid();"
```

#### Drop Staging Database

**Remove the existing staging database**: This operation deletes the current staging database. It's a critical action and should be performed with caution, ensuring that a backup exists before proceeding.
```bash
export DB_PASSWORD='YourPasswordHere'
psql "sslmode=disable host=34.65.121.69 dbname=postgres user=directus-staging password=$DB_PASSWORD" -c 'DROP DATABASE IF EXISTS "directus-staging";'
```

#### Re-create Staging Database

After Dropping the DB, create a fresh one.
```bash
psql "sslmode=disable host=34.65.121.69 dbname=postgres user=directus-staging password=$DB_PASSWORD" -c 'CREATE DATABASE "directus-staging";'
```

#### Restore Staging Database from prod backup

Ensure the database is created before attempting a restore.
```bash
cat backend/directus_db_prod.sql | psql "sslmode=disable host=34.65.121.69 dbname=directus-staging user=directus-staging password=$DB_PASSWORD"
```
