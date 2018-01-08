#!/usr/bin/env bash

echo "$CONCOURSE_URL"

curl --verbose --insecure $CONCOURSE_URL/api/v1/cli?arch=amd64&platform=linux > fly

ls

