#!/bin/bash

REPO="giuliocalzo/terraform-awscli"
VERSION=${1:-latest}

docker build -t ${REPO}:${VERSION} .
docker push ${REPO}

RUN=${2:-no}
# Run image
if [[ "$RUN" != "no" ]]; then
	docker run  -i -t ${REPO}:${VERSION}
fi
