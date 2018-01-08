#!/usr/bin/env bash

ifconfig

ping "$CONCOURSE_URL"

curl --insecure https://$CONCOURSE_URL/api/v1/cli?arch=amd64&platform=linux > $FLY

ls

