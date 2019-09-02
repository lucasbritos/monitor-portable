FROM willhallonline/ansible:ubuntu-16.04

RUN apt-get update && apt-get install -y cron

RUN pip install --ignore-installed PyYAML

RUN pip install junos-eznc jxmlease jmespath influxdb

RUN pip install jinja2 -U

RUN ansible-galaxy install Juniper.junos

RUN mkdir -p /root/.ssh/

COPY keys/ /root/.ssh/

COPY entry-point.sh /entry-point.sh

RUN chmod +x /entry-point.sh

ENTRYPOINT ["/entry-point.sh"]

