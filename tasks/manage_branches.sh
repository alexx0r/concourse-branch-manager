#!/bin/sh

echo "$CONCOURSE_URL"

curl --insecure -SsL -o fly -u "$CONCOURSE_USERNAME:$CONCOURSE_PASSWORD" "https://concourse-sdc.wob.vw.vwg/api/v1/cli?arch=amd64&platform=linux"

ls -a

chmod +x fly

echo "PROXIES"

echo $HTTP_PROXY $HTTPS_PROXY


echo $CONCOURSE_TEAM  $CONCOURSE_USERNAME $CONCOURSE_PASSWORD

ping 10.2.29.246

curl --insecure -sSL https://10.2.29.246/api/v1/info

./fly --target=concourse login -k --verbose --concourse-url="$CONCOURSE_URL" --team-name=kpm -u $CONCOURSE_USERNAME -p $CONCOURSE_PASSWORD

