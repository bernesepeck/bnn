#!/bin/sh

# Start Directus normally in the background
node cli.js bootstrap &
directus_pid=$!

# Wait for Directus to finish bootstrapping
wait $directus_pid

# Now apply Directus schema snapshot if needed
if [ "$APPLY_SNAPSHOT" = "true" ]; then
  echo "Downloading and applying schema snapshot..."
  wget -O snapshot-latest.yaml https://storage.googleapis.com/bnn-directus-snapshots/snapshot-latest.yaml
  npx directus schema apply --yes ./snapshot-latest.yaml
fi

# Continue to run Directus in the foreground
exec pm2-runtime start ecosystem.config.cjs