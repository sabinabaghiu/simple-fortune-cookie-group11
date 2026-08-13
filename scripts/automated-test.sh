#!/bin/bash

set -e

URL=${1:-http://localhost:8080}

echo "Testing application at $URL"

for i in {1..10}; do
  if curl --fail --silent "$URL" > /dev/null; then
    echo "Application is reachable"
    exit 0
  fi

  echo "Application not ready yet, retrying..."
  sleep 5
done

echo "Application could not be reached"
exit 1