#!/bin/bash

# - docker pull all images

export INVOICENINJA_DOCKER_TAG=${INVOICENINJA_DOCKER_TAG:-"5.3.66"}
export MONGO_DOCKER_TAG=${MONGO_DOCKER_TAG:-"5.0.6"}
export MONGO_UI_DOCKER_TAG=${MONGO_UI_DOCKER_TAG:-"0.54.0"}


docker pull mongo:${MONGO_DOCKER_TAG}
docker pull mongo-express:${MONGO_UI_DOCKER_TAG}
docker pull invoiceninja:invoiceninja:${INVOICENINJA_DOCKER_TAG}
