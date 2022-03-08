#!/bin/bash

# --- # --- # --- # --- # --- # --- # --- # --- #{}
# --- # --- # --- # --- # --- # --- # --- # --- #{}
# prepare secrets here
# --- # --- # --- # --- # --- # --- # --- # --- #{}
# --- # --- # --- # --- # --- # --- # --- # --- #{}
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " >> prepare all database secrets: + "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "

export POKUS_MONGO_ADMIN_USER=${POKUS_MONGO_ADMIN_USER:-"pokus"}
export POKUS_MONGO_ADMIN_PASS=${POKUS_MONGO_ADMIN_PASS:-"pokus"}
export POKUS_BASICAUTH_USERNAME=${POKUS_BASICAUTH_USERNAME:-"pokus"}
export POKUS_BASICAUTH_PASSWORD=${POKUS_BASICAUTH_PASSWORD:-"pokus"}
export POKUS_SITE_COOKIESECRET=$(openssl rand -hex 32)
export POKUS_SITE_SESSIONSECRET=$(openssl rand -hex 32)
export POKUS_MONGODB_URL=${POKUS_MONGODB_URL:-"pokus"}
export POKUS_MONGODB_AUTH_DATABASE=${POKUS_MONGODB_AUTH_DATABASE:-"pokus"}
export POKUS_MONGODB_AUTH_USERNAME=${POKUS_MONGODB_AUTH_USERNAME:-"pokus"}
export POKUS_MONGODB_AUTH_PASSWORD=${POKUS_MONGODB_AUTH_PASSWORD:-"pokus"}

mkdir -p ./docker/run/.secrets
echo "${POKUS_MONGO_ADMIN_USER}" > ./docker/run/.secrets/mongo_admin_user.txt
echo "${POKUS_MONGO_ADMIN_PASS}" > ./docker/run/.secrets/mongo_admin_pass.txt
echo "${POKUS_BASICAUTH_USERNAME}" > ./docker/run/.secrets/basicauth_username.txt
echo "${POKUS_BASICAUTH_PASSWORD}" > ./docker/run/.secrets/basicauth_password.txt
echo "${POKUS_SITE_COOKIESECRET}" > ./docker/run/.secrets/site_cookiesecret.txt
echo "${POKUS_SITE_SESSIONSECRET}" > ./docker/run/.secrets/site_sessionsecret.txt
echo "${POKUS_MONGODB_URL}" > ./docker/run/.secrets/mongodb_url.txt
echo "${POKUS_MONGODB_AUTH_DATABASE}" > ./docker/run/.secrets/mongodb_auth_database.txt
echo "${POKUS_MONGODB_AUTH_USERNAME}" > ./docker/run/.secrets/mongodb_auth_username.txt
echo "${POKUS_MONGODB_AUTH_PASSWORD}" > ./docker/run/.secrets/mongodb_auth_password.txt

# ------------------
# ------------------
#
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " >> prepare Invoice Ninja secrets: + "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
export INVOICENINJA_DOCKER_TAG=${INVOICENINJA_DOCKER_TAG:-"5.3.66"}
docker pull invoiceninja/invoiceninja:${INVOICENINJA_DOCKER_TAG}
export GENERATED_INVOICENINJA_APP_KEY=$(docker run --rm -it invoiceninja/invoiceninja php artisan key:generate --show | tr -d "\n\r")
echo "GENERATED_INVOICENINJA_APP_KEY=[${GENERATED_INVOICENINJA_APP_KEY}]"
mkdir -p ./docker/run/.secrets/invoiceninja/
echo "${GENERATED_INVOICENINJA_APP_KEY}" > ./docker/run/.secrets/invoiceninja/invoiceninja_app_key.txt

# ------------------
# ------------------
# If I wanted to add Caddy.... (the I'll just generate the secret files, instead of generating .env and having secrets into the system environment)
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " >> prepare Caddy reverse proxy secrets: + "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "

export CADDY_ADMIN_USER=${CADDY_ADMIN_USER:-"pokus"}
export CADDY_ADMIN_PASSWORD=${CADDY_ADMIN_PASSWORD:-"pokus"}
export GENERATED_SECRET_VALUE=$(docker run --rm caddy caddy hash-password --plaintext "${CADDY_ADMIN_PASSWORD}")
echo " >++++++>++>     GENERATED_SECRET_VALUE=[${GENERATED_SECRET_VALUE}]"
export CADDY_ADMIN_PASSWORD_HASH=${GENERATED_SECRET_VALUE}

mkdir -p ./docker/run/.secrets/caddy/
echo "${CADDY_ADMIN_USER}" > ./docker/run/.secrets/caddy/caddy_admin_user.txt
echo "${CADDY_ADMIN_PASSWORD}" > ./docker/run/.secrets/caddy/caddy_admin_password.txt
echo "${CADDY_ADMIN_PASSWORD_HASH}" > ./docker/run/.secrets/caddy/caddy_admin_password_hash.txt
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " >> Finished preparing secrets! + "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{}"
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{}"
