## monitor-portable

Dockerized stack monitoring system for general purposes. Intended to be small and portable.

### Step 1:

git clone https://github.com/lucasbritos/portable-monitor.git


### Step 2:

docker-compose up --no-start <br />
docker-compose start <br />

Starting telegraf ... done <br />
Starting influxdb ... done <br />
Starting grafana  ... done <br />


### Step 3:

http://Server-IP:3000 <br />
Login: admin/admin (change password) <br />

### Step 4:

Add some telegraf config files at telegraf/telegraf.d folder <br />
You have some examples at telegraf/examples <br />
<br />
You need to restart telegraf each time you change config<br />
<br />
docker-compose restart telegraf<br />
<br />
Dont forget to configure snmp community on devices <br />

### Step 5:

Add grafana source. All default, except: <br />

Name: telegraf <br />
Type: InfluxDB <br />
URL: http://influxdb:8086 <br />
Database:telegraf <br />
<br />
NOTE: Dont worry about: "database not found: telegraf" for now. Wait 5 minutes at least.<br />

### Step 6

Import some dashboards, you have some examples on grafana/dashboard_examples folder

### Useful commands

docker-compose down -v

### TODO

- Configure Retention policies - Continous Querys on DB

