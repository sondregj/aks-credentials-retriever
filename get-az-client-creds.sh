#!/bin/bash

# ARGS
# 1. azure.json file path
# 2. Output file path

echo "Pulling secrets from $1 into $2"

cat <<EOF > $2 
export AZURE_TENANT_ID="$(cat $1 | jq -r '.tenantId')"
export AZURE_CLIENT_ID="$(cat $1 | jq -r '.aadClientId')"
export AZURE_CLIENT_SECRET="$(cat $1 | jq -r '.aadClientSecret')"
EOF

chmod +x "$2"

echo "Done."
