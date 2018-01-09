#!/bin/sh

apk --update add \
    ruby ruby-irb ruby-rake ruby-io-console ruby-bigdecimal ruby-json ruby-bundler \
    libstdc++ tzdata bash ca-certificates \
&& echo 'gem: --no-document' > /etc/gemrc

echo "$CONCOURSE_URL"

curl --insecure -SsL -o fly -u "$CONCOURSE_USERNAME:$CONCOURSE_PASSWORD" "https://concourse-sdc.wob.vw.vwg/api/v1/cli?arch=amd64&platform=linux"

ls -a

chmod +x fly

./fly help

echo $CONCOURSE_TEAM  $CONCOURSE_USERNAME $CONCOURSE_PASSWORD

./fly --target=concourse login --verbose --concourse-url=$CONCOURSE_URL $CONCOURSE_TEAM -u $CONCOURSE_USERNAME -p $CONCOURSE_PASSWORD

