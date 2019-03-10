#!/bin/bash
MODEL_NAME="pylearn"
VERSION_NAME="v1"
INPUT_FILE="input.json"

gcloud ml-engine predict --model $MODEL_NAME --version \
  $VERSION_NAME --json-instances $INPUT_FILE
