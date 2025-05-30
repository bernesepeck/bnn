#!/bin/sh

# Start Directus normally in the background
node cli.js bootstrap &
directus_pid=$!

# Wait for Directus to finish bootstrapping
wait $directus_pid

# Determine if we should apply snapshot
if [ "$APPLY_SNAPSHOT" = "true" ]; then
  echo "Applying schema snapshot..."
  npx directus schema apply --yes ./snapshots/snapshot-latest.yaml
else
  echo "Skipping snapshot apply (APPLY_SNAPSHOT=$APPLY_SNAPSHOT)"
fi

# Continue to run Directus in the foreground
exec pm2-runtime start ecosystem.config.cjs