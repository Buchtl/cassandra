#!/bin/bash

docker exec -it cassandra cqlsh -f /scripts/data.cql

# check
docker exec -it cassandra cqlsh -e "SELECT * FROM store.shopping_cart"
