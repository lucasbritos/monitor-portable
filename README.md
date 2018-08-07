## monitor-portable

Dockerized stack monitoring system for general purposes. Intended to be small and portable.

- Telegraf: SNMP Polling agent
- Logstash: Procesing agent for syslog, IPFIX, etc
- InfluxDB: Modern time series database
- Elasticsearch: Modern Search-text engine
- Grafana: Multi-source visualization tool
- cAdvisor: Monitoring agent for containers and hosts

Pre-requisites:
- docker
- docker-compose

### Step 1: Install

git clone https://github.com/lucasbritos/monitor-portable.git

### Step 2: Compose

docker-compose up --no-start <br />
docker-compose start <br />

Starting telegraf ... done <br />
Starting influxdb ... done <br />
Starting grafana  ... done <br />


### Step 3: Telegraf config

Add some telegraf config files at telegraf/conf.d folder <br />
You have some examples at telegraf/examples <br />
<br />
You need to restart telegraf each time you change config<br />
<br />
docker-compose restart telegraf<br />
<br />
Dont forget to configure snmp community on devices <br />

### Step 4: Grafana config

http://Server-IP:3000 <br />
Login: admin/admin (change password) <br />

Import some dashboards, you have some examples on grafana/dashboard_examples folder

### Step 5: Logstash config

Add some logstash config files at logstash/conf.d folder <br />
You have some examples at logstash/examples <br />
<br />
You DONT need to restart logstash each time you change config<br />

#### Useful commands

- docker-compose down -v (Delete all containers and volumes)
- iptables -I DOCKER-USER -i ext_if ! -s X.X.X.X/24 -j DROP (to add rule to avoid external exposure, DOCKER-USER chain shoulb be manually created before docker starts) 

#### TODO

- Configure Retention policies - Continous Querys on DB
- IPFIX Examples
