FROM docker.elastic.co/logstash/logstash:6.3.2
RUN logstash-plugin install logstash-input-udp
RUN logstash-plugin install logstash-input-syslog
RUN logstash-plugin install logstash-filter-grok
RUN logstash-plugin install logstash-filter-mutate
RUN logstash-plugin install logstash-output-elasticsearch
