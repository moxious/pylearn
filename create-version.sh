#!/bin/bash

MODEL_DIR="gs://pylearn-cloud-ml"
VERSION_NAME="v1"
MODEL_NAME="pylearn"
FRAMEWORK="SCIKIT_LEARN"

  gcloud ml-engine versions create $VERSION_NAME \
      --model $MODEL_NAME --origin $MODEL_DIR \
      --runtime-version=1.13 --framework $FRAMEWORK \
      --python-version=3.5
