USEFUL COMMANDS:

# CONTAINER CLEAR LOGS
echo "" > $(docker inspect --format='{{.LogPath}}' <container_name_or_id>)
https://stackoverflow.com/questions/42510002/how-to-clear-the-logs-properly-for-a-docker-container


## SEND SYSLOG UDP TESTING

echo '<14>sourcehost message text' | nc -v -u -w 0 10.0.255.85 1514


