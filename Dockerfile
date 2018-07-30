FROM jetbrains/teamcity-minimal-agent:2018.1.1-linux

ENV DEBIAN_FRONTEND noninteractive
ENV GOVERSION 1.10.3

RUN apt-get update && apt-get install -qqy vim git wget tar \
&& wget -q https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz \
&& tar -xvf go${GOVERSION}.linux-amd64.tar.gz \
&& mv go /usr/local \
&& mkdir -p /opt/gopath

ENV GOROOT="/usr/local/go"
ENV GOPATH="/opt/gopath"
ENV PATH="${GOPATH}/bin:${GOROOT}/bin:${PATH}"