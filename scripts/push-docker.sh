#!/bin/bash

set -eo pipefail

docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWD
docker push cnery/cgate:arm-$BUILDKITE_BUILD_NUMBER
