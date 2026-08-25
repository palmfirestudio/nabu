#!/bin/sh
set -eu

: "${KNOWLEDGE_PATH:=/data/nabu/knowledge}"
: "${NABU_DATA_PATH:=/data/nabu/app-data}"

mkdir -p "$KNOWLEDGE_PATH" "$NABU_DATA_PATH"

# Seed the persistent vault once. Future deploys leave the user's vault untouched.
if [ -d /app/knowledge-seed ] && [ -z "$(find "$KNOWLEDGE_PATH" -mindepth 1 -maxdepth 1 -print -quit)" ]; then
  cp -R /app/knowledge-seed/. "$KNOWLEDGE_PATH/"
fi

exec node .output/server/index.mjs
