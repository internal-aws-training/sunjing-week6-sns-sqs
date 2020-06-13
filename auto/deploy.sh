#!/bin/bash

cd $(dirname $0)/..

STACKUP_IMAGE=realestate/stackup:latest
STACK_NAME=week6

docker run --rm \
    -v $(pwd):/app \
    -w /app \
    -e AWS_ACCESS_KEY_ID \
    -e AWS_SECRET_ACCESS_KEY \
    -e AWS_SESSION_TOKEN \
    -e AWS_DEFAULT_REGION \
    ${STACKUP_IMAGE} \
    --region ap-southeast-2 \
    ${STACK_NAME} up \
    -t template.yml \
    --tags aws/tags.yml
