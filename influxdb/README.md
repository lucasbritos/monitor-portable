USEFUL COMMANDS:
# Connect to database CLI
docker exec -it influxdb influx

# Delete data from measurement
DROP SERIES FROM channel

# Delete database
DROP DATABASE telegraf

SHOW FIELD KEYS


## Build w/o sending context (files)
docker build --tag influxdb-test - < Dockerfile
