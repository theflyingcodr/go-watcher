FROM golang:1.15.8-alpine3.13

ENV WATCHER_VERSION 0.2.4

ADD https://github.com/canthefason/go-watcher/releases/download/v${WATCHER_VERSION}/watcher-${WATCHER_VERSION}-linux-amd64 $GOPATH/bin/watcher

RUN chmod +x $GOPATH/bin/watcher

WORKDIR /go/src

VOLUME /go/src
CMD ["watcher"]
