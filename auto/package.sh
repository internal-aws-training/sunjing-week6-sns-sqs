#!/bin/bash

cd $(dirname $0)/..


BUCKET_NAME=sj-lambda-code
TEMPLATE=template

echo "package ..."
aws cloudformation \
  package \
  --region ap-southeast-2 \
  --template-file ./aws/${TEMPLATE}.yml \
  --s3-bucket ${BUCKET_NAME} \
  --output-template-file ${TEMPLATE}.yml
