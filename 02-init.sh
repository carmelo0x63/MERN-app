#!/usr/bin/env bash
echo "########### Loading data to Mongo DB ###########"
mongoimport --jsonArray --db myVault --collection password_storage --file /tmp/data/data.json
