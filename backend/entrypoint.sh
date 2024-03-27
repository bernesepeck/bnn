#!/bin/sh

# Check if we need to apply a Directus schema snapshot
if [ "$APPLY_SNAPSHOT" = "true" ]; then
  echo "Downloading and applying schema snapshot..."
  wget -O snapshot-latest.yaml https://storage.googleapis.com/bnn-directus-snapshots/snapshot-latest.yaml
  npx directus schema apply --yes ./snapshot-latest.yaml
fi

# Start Directus normally
echo "Executing command: $@"
exec "$@"