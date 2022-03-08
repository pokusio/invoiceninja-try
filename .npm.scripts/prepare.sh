#!/bin/bash

# --- # --- # --- # --- # --- # --- # --- # --- #{}
# --- # --- # --- # --- # --- # --- # --- # --- #{}
# prepare secrets here
# --- # --- # --- # --- # --- # --- # --- # --- #{}
# --- # --- # --- # --- # --- # --- # --- # --- #{}
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " >> prepare all secrets: + "
env
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "
echo " ># --- # --- # --- # --- # --- # --- # --- # --- #{} "

# ---- prepare filesystem tree
if [ -d ./docker/run/ ]; then
  rm -fr ./docker/run/
fi;

mkdir -p ./docker/run/.secrets/

cp -fr ./docker/run.template/* ./docker/run/

# ---- prepare the secrets
./.npm.scripts/secrets/prepare.sh


# --- docker pull all images
./.npm.scripts/containers/prepare.sh
