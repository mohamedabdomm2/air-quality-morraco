#!/bin/bash

sleep 5

echo "--- Starting CSV Import ---"

mongoimport \
    --host localhost \
    --username $MONGO_INITDB_ROOT_USERNAME \
    --password $MONGO_INITDB_ROOT_PASSWORD \
    --authenticationDatabase admin \
    --db air-quality \
    --collection morraco \
    --type csv \
    --file /docker-entrypoint-initdb.d/morraco_measurments.csv \
    --headerline

echo "--- CSV Import Finished ---"