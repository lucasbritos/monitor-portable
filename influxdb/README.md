USEFUL COMMANDS:
# Connect to database CLI
docker exec -it influxdb influx

# Delete data from measurement
DROP SERIES FROM channel

# Delete database
DROP DATABASE telegraf

SHOW FIELD KEYS

## Delete All subscriptions
docker exec -it influxdb /bin/bash
IFS=$'\n'; for i in $(influx -format csv -database _internal -execute 'show subscriptions' | tail -n +2 | grep -v name); do influx -format csv -database _internal -execute "drop subscription \"$(echo "$i" | cut -f 3 -d ',')\" ON \"$(echo "$i" | cut -f 1 -d ',')\".\"$(echo "$i" | cut -f 2 -d ',')\""; done




## Build w/o sending context (files)
docker build --tag influxdb-test - < Dockerfile
