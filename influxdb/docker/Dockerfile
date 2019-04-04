FROM golang:1.11 as builder
RUN go get -u github.com/golang/dep/...

RUN git clone https://github.com/influxdata/influxdb.git && cd influxdb && git checkout 1.7 \
    && mkdir -p /go/src/github.com/influxdata/influxdb && cp -r ./* /go/src/github.com/influxdata/influxdb

#RUN go get -u github.com/influxdata/influxdb

WORKDIR /go/src/github.com/influxdata/influxdb

#COPY Gopkg.toml Gopkg.lock ./
RUN dep ensure -vendor-only
#COPY . /go/src/github.com/influxdata/influxdb
RUN go install -tags uint64 ./cmd/...

FROM debian:stretch
COPY --from=builder /go/bin/* /usr/bin/
COPY --from=builder /go/src/github.com/influxdata/influxdb/etc/config.sample.toml /etc/influxdb/influxdb.conf

EXPOSE 8086
VOLUME /var/lib/influxdb

COPY entrypoint.sh /entrypoint.sh
COPY init-influxdb.sh /init-influxdb.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["influxd"]


