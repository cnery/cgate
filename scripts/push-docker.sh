#!/bin/bash

set -eo pipefail

docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWD
docker push cnery/cgate:arm-$BUILDKITE_BUILD_NUMBER
docker push cnery/cgate:x86-64-$BUILDKITE_BUILD_NUMBER

docker tag cnery/cgate:arm-$BUILDKITE_BUILD_NUMBER cnery/cgate:arm-latest
docker push cnery/cgate:arm-latest

docker tag cnery/cgate:x86-64-$BUILDKITE_BUILD_NUMBER cnery/cgate:x86-64-latest
docker push cnery/cgate:x86-64-latest
