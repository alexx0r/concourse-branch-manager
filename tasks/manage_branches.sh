#!/bin/bash

echo "$CONCOURSE_URL"

curl --insecure $CONCOURSE_URL/api/v1/cli?arch=amd64&platform=linux > $FLY

ls
