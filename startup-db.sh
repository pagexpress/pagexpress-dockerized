#!/usr/bin/env bash

# Copy local backup
docker-compose -f docker-compose-dev.yml exec -T px_staging_mongo rm -rf /dump
docker-compose -f docker-compose-dev.yml exec -T px_staging_mongo mkdir /dump
docker cp data/dump.gz $(docker ps -aqf "name=px_staging_mongo"):/dump/

# Run mongorestore using last dump
# Use these options to migrate to different db: --nsFrom="local.*" --nsTo="staging.*"
docker-compose -f docker-compose-dev.yml exec -T px_staging_mongo mongorestore --uri="mongodb://root:root@0.0.0.0:27017/local?authSource=admin" --gzip --archive="/dump/dump.gz" --drop
