#!/bin/bash

DATASET=checkout

if [[ -z "$HONEYCOMB_APIKEY" ]]
then
  echo "Please define HONEYCOMB_APIKEY"
  exit 1
fi

curl https://api.honeycomb.io/1/markers/$DATASET -X POST \
  -H "X-Honeycomb-Team: $HONEYCOMB_APIKEY" \
  -d '{"message": "deploy build #45362", "type": "deploy"}'
