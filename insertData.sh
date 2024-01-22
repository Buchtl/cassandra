#!/bin/bash

docker exec -it cassandra cqlsh -e "INSERT INTO store.shopping_cart (userid, item_count) VALUES ('4567', 20)"

# check
docker exec -it cassandra cqlsh -e "SELECT * FROM store.shopping_cart"

docker exec -it cassandra cqlsh -e "UPDATE store.shopping_cart \
                                    SET item_count = 21, \
                                    last_update_timestamp = toTimeStamp(now()) \
                                    WHERE userid = '4567'"

docker exec -it cassandra cqlsh -e "SELECT * FROM store.shopping_cart"
