#!/usr/bin/env bash

# Copy local backup
sudo docker-compose -f docker-compose-dev.yml exec -T px_dev_mongo rm -rf /dump
sudo docker-compose -f docker-compose-dev.yml exec -T px_dev_mongo mkdir /dump
sudo docker cp data/dump.gz $(sudo docker ps -aqf "name=px_dev_mongo"):/dump/

# Run mongorestore using last dump
# Use these options to migrate to different db: --nsFrom="local.*" --nsTo="dev.*"
sudo docker-compose -f docker-compose-dev.yml exec -T px_dev_mongo mongorestore --uri="mongodb://root:root@0.0.0.0:27017/local?authSource=admin" --gzip --archive="/dump/dump.gz" --drop
