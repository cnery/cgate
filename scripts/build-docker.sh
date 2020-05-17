#!/bin/bash

set -eo pipefail

curl -O https://updates.clipsal.com/ClipsalSoftwareDownload/mainsite/cis/technical/CGate/cgate-2.11.4_3251.zip && \
    unzip cgate-2.11.4_3251.zip && \
    rm -f cgate-2.11.4_3251.zip && \
    rm -f cgate/tag/* && \
    rm -f cgate/config/access.txt

docker build -t cnery/cgate:arm-$BUILDKITE_BUILD_NUMBER -f Dockerfile.arm .
docker build -t cnery/cgate:amd64-$BUILDKITE_BUILD_NUMBER -f Dockerfile.amd64 .

rm -rf cgate
./scripts/push-docker.sh
