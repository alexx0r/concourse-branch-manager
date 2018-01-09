#!/usr/bin/env bash

echo "$CONCOURSE_URL"

curl --verbose --insecure $CONCOURSE_URL/api/v1/cli?arch=amd64&platform=linux

ls -a

chmod +x fly

./fly help

echo $CONCOURSE_TEAM  $CONCOURSE_USERNAME $CONCOURSE_PASSWORD

./fly --target=concourse login --verbose --concourse-url=$CONCOURSE_URL $CONCOURSE_TEAM -u $CONCOURSE_USERNAME -p $CONCOURSE_PASSWORD

