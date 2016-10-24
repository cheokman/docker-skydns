FROM cheokman/docker-go:1.7.3
MAINTAINER Ben Wu <wucheokman@gmail.com>

ENV ETCD_MACHINE ETCDHOST
ENV SKYDNS_HOME $GOPATH/src/github.com/skynetservices/skydns

RUN go get github.com/skynetservices/skydns \
    && cd ${SKYDNS_HOME} \
    && go build -v

WORKDIR ${SKYDNS_HOME}

CMD ["./skydns"]
