FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y iputils-ping snmp procps lm-sensors wget curl build-essential git

RUN cd ~ && wget https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz

RUN cd ~ && tar -C /usr/local -xzf go1.11.4.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"


RUN mkdir -p /root/go/bin

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh



RUN go get -d github.com/lucasbritos/telegraf

RUN mkdir -p /root/go/src/github.com/influxdata/telegraf/ && mv /root/go/src/github.com/lucasbritos/telegraf/ /root/go/src/github.com/influxdata/ && rm /root/go/src/github.com/lucasbritos/ -r


RUN cd "/root/go/src/github.com/influxdata/telegraf" && make

ENV PATH="/root/go/src/github.com/influxdata/telegraf:${PATH}"

EXPOSE 8125/udp 8092/udp 8094

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
