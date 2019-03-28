#!/bin/bash

# Instead of using 'master' in the URL of the azuredeploy.json, use an explicit
# Git commit hash. This bypasses the caching of the Azure platform, and ensures
# we actually use the last commit.

HASH=$(git log --format=format:'%H' -n 1)
URL="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Farmadillica%2Fdeploy-to-azure-test%2F${HASH}%2Fazuredeploy.json"
xdg-open "$URL"
