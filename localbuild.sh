#!/usr/bin/env bash
_IMAGE_NAME="docker.io/ekgf/gcloud-terraform"
_IMAGE_VERSION="latest"
_MANUALLY_INCREMENTED_IMAGE_VERSION="0.0.3"

docker build . \
  --iidfile=.image-id \
  "--tag=${_IMAGE_NAME}:${_IMAGE_VERSION}" \
  "--tag=${_IMAGE_NAME}:${_MANUALLY_INCREMENTED_IMAGE_VERSION}"
exit $?
